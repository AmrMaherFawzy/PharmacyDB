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

// دالة خاصة لتعامل مع حدث النقر على الأزرار
function validateAndSubmit(buttonID) {
    try {
        // جلب قيم المدخلات من الصفحة
        var medicineID = document.getElementById('<%= TextBox1.ClientID %>').value;
        var medicineName = document.getElementById('<%= TextBox2.ClientID %>').value;
        var manufacturer = document.getElementById('<%= TextBox3.ClientID %>').value;
        var price = document.getElementById('<%= TextBox4.ClientID %>').value;
        var quantityInStock = document.getElementById('<%= TextBox5.ClientID %>').value;
        var expiryDate = document.getElementById('<%= TextBoxDate.ClientID %>').value;

        // تحقق من أن جميع الحقول المطلوبة ليست فارغة
        if (!medicineID || !medicineName || !manufacturer || !price || !quantityInStock || !expiryDate) {
            throw new Error("All fields are required.");
        }

        // التعامل مع أنواع الأزرار المختلفة بناءً على قيمة buttonID
        if (buttonID === 'Button1') {
            entities.AddMedicine({
                medicineName: medicineName,
                manufacturer: manufacturer,
                price: parseFloat(price),
                quantityInStock: parseInt(quantityInStock),
                expiryDate: new Date(expiryDate)
            });
            entities.SaveChanges();
            updateGridView();
        } else if (buttonID === 'Button2') {
            entities.UpdateMedicine({
                medicineID: parseInt(medicineID),
                medicineName: medicineName,
                manufacturer: manufacturer,
                price: parseFloat(price),
                quantityInStock: parseInt(quantityInStock),
                expiryDate: new Date(expiryDate)
            });
            updateGridView();
        } else if (buttonID === 'Button3') {
            entities.DeleteMedicine({ medicineID: parseInt(medicineID) });
            updateGridView();
        } else if (buttonID === 'Button4') {
            Search(TextBox7.value);
            Response.Write("Search button clicked");
        } else if (buttonID === 'Button5') {
            clearForm();
            Response.Write("DeleteAll button clicked");
        }

        // إذا كانت جميع الفحوصات ناجحة، يتم إرسال النموذج
        document.getElementById('form1').submit();
    } catch (err) {
        handleError(err.message, err.sourceURL, err.line, err.column, err);
    }
}

// دالة لتحديث GridView بعد إجراء العمليات
function updateGridView() {
    GridView1.DataSource = entities.Medicines.Select(x => ({
        x:MedicineID,
        x:MedicineName,
        x:Manufacturer,
        x:Price,
        x:QuantityInStock,
        x:ExpiryDate
    })).ToList();
}

// دالة لتفريغ الحقول في النموذج
function clearForm() {
    TextBox1.value = "";
    TextBox2.value = "";
    TextBox3.value = "";
    TextBox4.value = "";
    TextBox5.value = "";
    TextBoxDate.value = "";
}
