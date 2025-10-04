; HTML tag brackets
("<" @open "/>" @close)
("</" @open ">" @close)
("<" @open ">" @close)
((element (start_tag) @open (end_tag) @close) (#set! newline.only))

; Latte block tags
(block
  (directive_start) @open
  (directive_end) @close)

; Latte if/elseif/else blocks
(if_block
  open: (directive_start) @open
  close: (directive_end) @close)

; Latte loop blocks (foreach/for/while)
(loop_block
  open: (directive_start) @open
  close: (directive_end) @close)

; Latte switch blocks
(switch_block
  open: (directive_start) @open
  close: (directive_end) @close)

; Latte capture tag
(capture_tag
  "{capture" @open
  "{/capture}" @close)

; General bracket pairs for expressions
("{" @open "}" @close)
("(" @open ")" @close)
("[" @open "]" @close)

; Attribute quotes
("\"" @open "\"" @close)
("'" @open "'" @close)

(quoted_attribute_value
  "\"" @open
  "\"" @close)

(quoted_attribute_value
  "'" @open
  "'" @close)
