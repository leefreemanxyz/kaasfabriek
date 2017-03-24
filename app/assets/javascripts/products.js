
	(function ($) {
	  jQuery.expr[':'].Contains = function(a,i,m){
		  return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase())>=0;
	  };

	  function productFilter(header, product) {
		var form = $("<form>").attr({"class":"filterform","action":"#"}),
			input = $("<input>").attr({"class":"filterinput","style":"font-size:14px","type":"text","placeholder":"search here :)"});
		$(form).append(input).appendTo(header);

		$(input)
		  .change( function () {
			var filter = $(this).val();
			if(filter) {
			  $(product).find("h3:not(:Contains(" + filter + "))").parent().parent().parent().slideUp();
			  $(product).find("h3:Contains(" + filter + ")").parent().parent().parent().slideDown();
			} else {
			  $(product).find("div").slideDown();
			}
			return false;
		  })
		.keyup( function () {
			$(this).change();
		});
	  }

	  $(function () {
		productFilter($("#header"), $("#product"));
	  });
	}(jQuery));
