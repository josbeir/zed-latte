; HTML tag brackets
("<" @open "/>" @close)
("</" @open ">" @close)
("<" @open ">" @close)
("\"" @open "\"" @close)
((element (start_tag) @open (end_tag) @close) (#set! newline.only))

; Latte block brackets
(block
  (block_start) @open
  (block_end) @close)

; Latte curly braces
("{" @open "}" @close)

; Attribute quotes
("\"" @open "\"" @close)
("'" @open "'" @close)

(quoted_attribute_value
  "\"" @open
  "\"" @close)

(quoted_attribute_value
  "'" @open
  "'" @close)
