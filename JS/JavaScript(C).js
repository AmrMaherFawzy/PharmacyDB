// دالة التعامل مع الأخطاء العامة
function handleError(message, source, lineno, colno, error) {
    console.error(`Error: ${message} at ${source}:${lineno}:${colno}`);
    if (error && error.stack) {
        console.error("Stack Trace:", error.stack);
    }
    alert("An error occurred on the page. Please try again later.");
    return true; // تمنع ظهور رسائل الخطأ الافتراضية
}

// تعيين الدالة للتعامل مع جميع الأخطاء غير المعالجة
window.onerror = handleError;

// دالة خاصة للتعامل مع حدث النقر على الأزرار
function validateAndSubmit(buttonID) {
    try {
        // جلب قيم المدخلات من الصفحة
        var customerID = document.getElementById('<%= TextBox1.ClientID %>').value;
        var firstName = document.getElementById('<%= TextBox2.ClientID %>').value;
        var lastName = document.getElementById('<%= TextBox3.ClientID %>').value;
        var phoneNumber = document.getElementById('<%= TextBox4.ClientID %>').value;
        var email = document.getElementById('<%= TextBox5.ClientID %>').value;
        var address = document.getElementById('<%= TextBox6.ClientID %>').value;

        // تحقق من أن جميع الحقول المطلوبة ليست فارغة
        if (!customerID || !firstName || !lastName || !phoneNumber || !email || !address) {
            throw new Error("All fields are required.");
        }

        // تنفيذ الكود المطلوب بناءً على الزر الذي تم النقر عليه
        if (buttonID === 'Button1') {
            entities.AddCustomer({
                FirstName: firstName,
                LastName: lastName,
                PhoneNumber: phoneNumber,
                Email: email,
                Address: address
            });
            updateCustomerData();
        } else if (buttonID === 'Button2') {
            entities.UpdateCustomer({
                CustomerID: parseInt(customerID),
                FirstName: firstName,
                LastName: lastName,
                PhoneNumber: phoneNumber,
                Email: email,
                Address: address
            });
            updateCustomerData();
        } else if (buttonID === 'Button3') {
            entities.DeleteCustomer({ CustomerID: parseInt(customerID) });
            updateCustomerData();
        } else if (buttonID === 'Button4') {
            var query = document.getElementById('<%= TextBox7.ClientID %>').value;
            if (query) {
                SearchCustomers(query);
            }
        } else if (buttonID === 'Button5') {
            clearForm();
        }

        // إذا كانت جميع الفحوصات ناجحة، يتم إرسال النموذج
        document.getElementById('form1').submit();
    } catch (err) {
        handleError(err.message, err.sourceURL, err.line, err.column, err);
    }
}

// دالة لتحديث بيانات العملاء بعد إجراء العمليات
function updateCustomerData() {
    var customersData = entities.Customers.Select(x => ({
        x:CustomerID,
        x:FirstName,
        x:LastName,
        x:PhoneNumber,
        x:Email,
        x:Address
    })).ToList();
}

// دالة لتفريغ الحقول في النموذج
function clearForm() {
    document.getElementById('<%= TextBox1.ClientID %>').value = "";
    document.getElementById('<%= TextBox2.ClientID %>').value = "";
    document.getElementById('<%= TextBox3.ClientID %>').value = "";
    document.getElementById('<%= TextBox4.ClientID %>').value = "";
    document.getElementById('<%= TextBox5.ClientID %>').value = "";
    document.getElementById('<%= TextBox6.ClientID %>').value = "";
}
