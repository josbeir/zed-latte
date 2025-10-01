; Comments
(comment) @comment

; Latte blocks
(block_start) @tag
(block_end) @tag

; Macro calls
(macro_call
  (macro_name) @function)

(macro) @keyword

; Elseif and else blocks
(block_start) @tag
(block_end) @tag
(elseif_start) @tag
(else_start) @tag

; Attributes
(attribute
  (attribute_name) @attribute)

(quoted_attribute_value) @string

; HTML elements
(tag_name) @tag
(erroneous_end_tag) @tag.error

; Doctype
(doctype) @keyword

; Text content
(text) @text

; Entities
(entity) @constant.character.escape
