; Show Latte named blocks in outline with the block tag as context
(block
  open: (block_start) @context) @item
  (#set! "kind" "block")

; Show macro calls in outline with the macro name
(macro_call
  (macro_name) @name) @item
  (#set! "kind" "function")

; Show control blocks in outline with their opening tags as context
(if_block
  open: (if_start) @context) @item
  (#set! "kind" "block")

(loop_block
  open: (loop_start) @context) @item
  (#set! "kind" "block")

(switch_block
  open: (switch_start) @context) @item
  (#set! "kind" "block")

; Show HTML elements in outline
(element
  (start_tag
    (tag_name) @name)) @item
  (#set! "kind" "module")
