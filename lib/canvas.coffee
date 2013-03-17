class @Canvas extends Object
    initialize: (id='canvas', context_type='2d', width, height) ->
        document_canvas = document.getElementById(id)
        document_canvas = document.getElementByTagName('canvas') if not document_canvas
        $canvas = $("##{id}")
        $canvas = $('canvas').first() if not $canvas

        @context = document_canvas.getContext context_type

        the_width = if width then width else $canvas.attr('width')
        the_height = if height then height else $canvas.attr('height')

        @size = {width: the_width, height: the_height}
    # initialize
# class
