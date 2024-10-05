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
        var saleID = document.getElementById('<%= TextBox1.ClientID %>').value;
        var customerID = document.getElementById('<%= TextBox2.ClientID %>').value;
        var medicineID = document.getElementById('<%= TextBox3.ClientID %>').value;
        var totalPrice = document.getElementById('<%= TextBox4.ClientID %>').value;
        var quantity = document.getElementById('<%= TextBox5.ClientID %>').value;
        var saleDate = document.getElementById('<%= TextBoxDate.ClientID %>').value;

        // تحقق من أن جميع الحقول المطلوبة ليست فارغة
        if (!saleID || !customerID || !medicineID || !totalPrice || !quantity || !saleDate) {
            throw new Error("All fields are required.");
        }

        // تنفيذ الكود المطلوب بناءً على الزر الذي تم النقر عليه
        if (buttonID === 'Button1') {
            entities.AddSale({
                customerID: parseInt(customerID),
                medicineID: parseInt(medicineID),
                quantity: parseInt(quantity),
                saleDate: new Date(saleDate),
                totalPrice: parseFloat(totalPrice)
            });
            updateSalesData();
        } else if (buttonID === 'Button2') {
            entities.UpdateSale({
                saleID: parseInt(saleID),
                customerID: parseInt(customerID),
                medicineID: parseInt(medicineID),
                quantity: parseInt(quantity),
                saleDate: new Date(saleDate),
                totalPrice: parseFloat(totalPrice)
            });
            updateSalesData();
        } else if (buttonID === 'Button3') {
            entities.DeleteSale({ saleID: parseInt(saleID) });
            updateSalesData();
        } else if (buttonID === 'Button4') {
            var query = document.getElementById('<%= TextBox7.ClientID %>').value;
            if (query) {
                SearchSales(query);
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

// دالة لتحديث بيانات المبيعات بعد إجراء العمليات
function updateSalesData() {
    var salesData = entities.Sales.Select(x => ({
        x:SaleID,
        x:CustomerID,
        x:MedicineID,
        x:Quantity,
        x:SaleDate,
        x:TotalPrice
    })).ToList();
}

// دالة لتفريغ الحقول في النموذج
function clearForm() {
    document.getElementById('<%= TextBox1.ClientID %>').value = "";
    document.getElementById('<%= TextBox2.ClientID %>').value = "";
    document.getElementById('<%= TextBox3.ClientID %>').value = "";
    document.getElementById('<%= TextBox4.ClientID %>').value = "";
    document.getElementById('<%= TextBox5.ClientID %>').value = "";
    document.getElementById('<%= TextBoxDate.ClientID %>').value = "";
}
