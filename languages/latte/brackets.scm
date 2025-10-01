; HTML tag brackets
("<" @open "/>" @close)
("</" @open ">" @close)
("<" @open ">" @close)
((element (start_tag) @open (end_tag) @close) (#set! newline.only))

; Latte block tags
(block
  open: (block_start) @open
  close: (block_end) @close)

; Latte if/elseif/else blocks
(if_block
  open: (if_start) @open
  close: (if_end) @close)

; Latte foreach blocks
(foreach_block
  open: (foreach_start) @open
  close: (foreach_end) @close)

; Latte for blocks
(for_block
  open: (for_start) @open
  close: (for_end) @close)

; Latte while blocks
(while_block
  open: (while_start) @open
  close: (while_end) @close)

; Latte switch blocks
(switch_block
  open: (switch_start) @open
  close: (switch_end) @close)

; Latte macro blocks
(macro
  open: (macro_start) @open
  close: (macro_end) @close)

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
