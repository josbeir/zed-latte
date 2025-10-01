; Show Latte named blocks in outline
(block) @item
  (#set! "kind" "block")

; Show macro definitions in outline
(macro) @item
  (#set! "kind" "function")

; Show macro calls in outline
(macro_call
  (macro_name) @name) @item
  (#set! "kind" "function")

; Show control blocks in outline
(if_block) @item
  (#set! "kind" "block")

(foreach_block) @item
  (#set! "kind" "block")

(for_block) @item
  (#set! "kind" "block")

(while_block) @item
  (#set! "kind" "block")

(switch_block) @item
  (#set! "kind" "block")

; Show HTML elements in outline
(element
  (start_tag
    (tag_name) @name)) @item
  (#set! "kind" "module")
