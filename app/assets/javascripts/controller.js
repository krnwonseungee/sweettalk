$(document).ready(function(){
  controller.bindEvents();
})

Controller = function(){}

Controller.prototype = {
  bindEvents: function(){
    $("#ipsumButton").on("click", function(e){
      e.preventDefault();
      controller.renderIpsum();
    })
  },

  renderIpsum: function(){
    $.ajax({
      type: "get",
      url: "/get_ipsum",
    }).done(function(data){
      $("#ipsumContainer").html(data);
    })
  }
}


controller = new Controller();
