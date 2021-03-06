App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    console.log("Connected");
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Got a new comment");
  	$(".new-comment").show();
    $('#comments-container').prepend(data.comment);
    refreshRating();
  },
  listen_to_comments: function(){
    return this.perform('listen', {
      product_id: $("[data-product-id]").data("product-id") 
    } );
  }
});




$(document).on('turbolinks:load', function() {
  App.product.listen_to_comments();
});
