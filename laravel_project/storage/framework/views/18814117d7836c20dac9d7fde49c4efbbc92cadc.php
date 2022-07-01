<html>
<body onload="submitPayuForm()">
<span id="rzp-button"><?php echo e(__('payumoney.pay-redirect-message')); ?></span>
<br>
<br>
<form action="<?php echo e($action_url); ?>" method="POST" name="payuForm">
    <input type="hidden" name="key" value="<?php echo e($merchant_key); ?>"/>
    <input type="hidden" name="txnid" value="<?php echo e($txnid); ?>"/>
    <input type="hidden" name="amount" value="<?php echo e($amount); ?>"/>
    <input type="hidden" name="productinfo" value="<?php echo e($productinfo); ?>"/>
    <input type="hidden" name="firstname" value="<?php echo e($firstname); ?>"/>
    <input type="hidden" name="email" value="<?php echo e($email); ?>"/>
    <input type="hidden" name="phone" value="<?php echo e($phone); ?>"/>
    <input type="hidden" name="surl" value="<?php echo e($surl); ?>"/>
    <input type="hidden" name="furl" value="<?php echo e($furl); ?>"/>
    <input type="hidden" name="hash" value="<?php echo e($hash); ?>"/>
    <input type="hidden" name="service_provider" value="payu_paisa" size="64"/>
</form>


<script>
    function submitPayuForm() {
        var payuForm = document.forms.payuForm;
        payuForm.submit();
    }
</script>
</body>
</html>
<?php /**PATH /home4/uaenurse/public_html/menteybody/laravel_project/resources/views/backend/user/subscription/payment/payumoney/do-checkout.blade.php ENDPATH**/ ?>