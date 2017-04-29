$(function() {
  loadGallery('/gallery_pages/')
})

$(document).on('click', '.js-gallery-link', function(e) {
  e.preventDefault()
  var href = $(this).data('href')
  loadGallery(href)
})

function loadGallery(href) {
  $.get(href, function(html) {
    $('.js-gallery-container').html(html)
  })
}
