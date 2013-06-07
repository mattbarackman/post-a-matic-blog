$(document).ready(function() {

  function confirmDeletion(e) {
    e.preventDefault();
    var blog_post = $(this).closest('.blog_post');
    blog_post.toggle(500);
    var request = $.ajax({
      url: this.action,
      method: "DELETE",
      data: $(this).serialize()
    });
  }

  function requestConfirmation(e) {
    e.preventDefault();
    var deleteButton = $(this).children('.btn.btn-danger');
    deleteButton.val('Confirm?');
    $(this).on('submit', confirmDeletion);
  }

  $('.delete_form').on('submit', requestConfirmation);
});
