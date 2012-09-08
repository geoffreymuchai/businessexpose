if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

function createModalBox(html) {
        var modalBox = $("<div id='modalBox'><div>");
        modalBox.html(html).appendTo(document.body);
        return modalBox;
}

function launchMediumPopup(title, html, btnFinishedText) {
        var modalBox = createModalBox(html);
        modalBox.dialog({
                modal: true,
                width: 500,
                height: 375,
                title: title,
                buttons: [{ text:"Cancel", click:cancel, id:"cancel" },
                        { text:btnFinishedText, click:submitAction, id:"submit" }],
                close: function() { $(this).remove(); }
        });
}

function cancel() {
    $(this).dialog('close');
}


function submitAction() {
	$(this).find("form").submit();
    $(this).dialog('close');

}