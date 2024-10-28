$(document).ready(function() {
	$("#mws-validate").validate({
		invalidHandler: function(form, validator) {
			var errors = validator.numberOfInvalids();
			if (errors) {
				var message = errors == 1
				? 'You missed 1 field. It has been highlighted'
				: 'You missed ' + errors + ' fields. They have been highlighted';
				$("#mws-validate-error").html(message).show();
			} else {
				$("#mws-validate-error").hide();
      		}
		}
	});
});
