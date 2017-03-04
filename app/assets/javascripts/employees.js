$(document).ready(function(){

  $(".list-group-item").on("click", function(e){
    var id = $(e.target).closest(".list-group-item").attr("employee-id")
    console.log(id)
    $(".employee-partial").remove()

    $.ajax({
      url: "/get_employee",
      method: "get",
      data: {employee_id: id}
    });

  })

  $(".add-new-employee").on("click", function(e){
    $(".employee-partial").remove()
    $(".title").text("Create New")
    $.ajax({
      url: "/new_employee",
      method: "get"
    });

  })

});
