$(document).ready(function(){
  controller.bindEvents();
})

Controller = function(){}
controller = new Controller();

Controller.prototype = {
  bindEvents: function(){
    $("#ipsumButton").on("click", function(e){
      e.preventDefault();
      controller.createIpsumRequest();
    })
  },

  createIpsumRequest: function(){
    $.ajax({
      type: "get",
      url: "/get_ipsum",
    }).done(function(data){
      renderIpsum(data);
    })
  }
}

View = function(){}
view = new View();

View.prototype = {
  renderIpsum: function(data){
    $("#ipsumContainer").html(data);
  }
}
