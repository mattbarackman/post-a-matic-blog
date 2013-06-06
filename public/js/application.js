$(document).ready(function() {
  $('.delete_form').on('submit', function(e){
    e.preventDefault();
    var deleteButton = $(this).children('.btn.btn-danger');
    deleteButton.val('Confirm?');
    $(this).on('submit', function(e){
      e.preventDefault();
      console.log(this.action);
      var request = $.ajax({
        url: this.action,
        method: "DELETE",
        data: $(this).serialize(),
        form: $(this).closest('.note')
      });

      request.done(function(response){
         this.form.fadeOut(500);
      });
    });
  });
});
