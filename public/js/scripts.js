$(document).ready(function() {
  $("#userinputs form").submit(function(event) {
    var searchphraseInput = $("input#searchphrase").val();
    var wordInput = $("input#word").val();

    $(".searchphrase").text(searchphraseInput);
    $(".word").text(wordInput);

    $("#results").show();

    event.preventDefault();
  });
});
