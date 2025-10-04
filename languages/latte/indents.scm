; HTML elements
(start_tag ">" @end) @indent
(self_closing_tag "/>" @end) @indent

(element
  (start_tag) @start
  (end_tag)? @end) @indent

; Latte blocks
[
  (block)
  (if_block)
  (loop_block)
  (switch_block)
  (capture_tag)
  (else_block)
  (elseif_block)
  (case_block)
  (default_case_block)
] @indent

; Dedent closing tags
(directive_end) @outdent

; Bracket pairs
(_ "{" "}" @end) @indent
(_ "(" ")" @end) @indent
(_ "[" "]" @end) @indent
