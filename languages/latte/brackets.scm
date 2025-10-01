; HTML brackets
("<" @open ">" @close)

; Latte block brackets
(block
  (block_start) @open
  (block_end) @close)

; Attribute quotes
(quoted_attribute_value
  "\"" @open
  "\"" @close)

(quoted_attribute_value
  "'" @open
  "'" @close)
