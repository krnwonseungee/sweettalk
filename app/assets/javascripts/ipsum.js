$(document).ready(function(){
  controller.bindEvents();
})

Controller = function(){};
View = function(){};

Controller.prototype = {
  bindEvents: function(){
    $("#ipsumButton").on("click", function(e){
      e.preventDefault();
      controller.createIpsumAjaxRequest();
    })
  },

  createIpsumAjaxRequest: function(){
    $.ajax({
      type: "get",
      url: "/get_ipsum",
    }).done(function(data){
      view.renderIpsum(data);
    })
  }
}

View.prototype = {
  renderIpsum: function(data){
    $("#ipsumContainer").html(data);
  }
}

controller = new Controller();
view = new View();
