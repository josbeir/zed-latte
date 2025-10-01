; Show Latte blocks in outline
(block
  (block_start) @context
  (#set! "kind" "block"))

; Show macro definitions in outline
(macro) @context
  (#set! "kind" "function")

; Show macro calls in outline
(macro_call
  (macro_name) @name
  (#set! "kind" "function"))

; Show HTML elements in outline
(element
  (start_tag
    (tag_name) @name)
  (#set! "kind" "module"))
