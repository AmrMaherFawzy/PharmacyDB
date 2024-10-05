// دالة التعامل مع الأخطاء العامة
function handleError(message, source, lineno, colno, error) {
    console.log("Error: " + message + " at " + source + ":" + lineno + ":" + colno);
    if (error) {
        console.log("Stack Trace: " + error.stack);
    }
    alert("An error occurred on the page. Please try again later.");
    return true; // تمنع ظهور رسائل الخطأ الافتراضية
}

// تعيين الدالة للتعامل مع جميع الأخطاء غير المعالجة
window.onerror = handleError;

// دالة خاصة لتعامل مع حدث النقر على الزر
function validateAndSubmit() {
    try {
        // هنا يمكنك وضع أكواد التحقق من المدخلات أو عمليات أخرى
        // على سبيل المثال التحقق من أن حقل التاريخ ليس فارغاً
        var dateInput = document.getElementById('<%= TextBoxDate.ClientID %>');
        if (!dateInput.value) {
            throw new Error("Please select a date.");
        }

        // إذا كانت جميع الفحوصات ناجحة، يتم إرسال النموذج
        document.getElementById('form1').submit();
    } catch (err) {
        handleError(err.message, err.filename, err.lineno, err.colno, err);
    }
}