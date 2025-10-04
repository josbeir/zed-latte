; Show Latte named blocks in outline with the block tag as name
(block
  (directive_start) @name
  arguments: (php_only)? @name
  "}" @name) @item
  (#set! "kind" "block")

; Show macro calls in outline
(macro_call) @item
  (#set! "kind" "function")

; Show control blocks in outline with their opening tags as name
(if_block
  (directive_start) @name
  condition: (php_only)? @name
  "}" @name) @item
  (#set! "kind" "block")

(loop_block
  (directive_start) @name
  content: (php_only)? @name
  "}" @name) @item
  (#set! "kind" "block")

(switch_block
  (directive_start) @name
  expression: (php_only)? @name
  "}" @name) @item
  (#set! "kind" "block")

; Show HTML elements in outline
(element
  (start_tag
    (tag_name) @name)) @item
  (#set! "kind" "module")
