; inherits: html

; PHP content - unified injection for all PHP expressions
((php_only) @injection.content
 (#set! injection.include-children)
 (#set! injection.language "php_only"))

; Html injections
(script_element
  (raw_text) @injection.content
  (#set! injection.language "javascript"))

(style_element
  (raw_text) @injection.content
  (#set! injection.language "css"))

; N-attributes - Latte attributes in HTML tags (n:if, n:foreach, etc.)
(attribute
  (attribute_name) @_attr
  (#match? @_attr "^n:")
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.language "php_only"))

; AlpineJS attributes
; <div x-data="{ foo: 'bar' }" x-init="baz()">
(attribute
  (attribute_name) @_attr
    (#match? @_attr "^x-[a-z]+")
    (#not-any-of? @_attr "x-teleport" "x-ref" "x-transition")
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.language "javascript"))

; <div :foo="bar" @click="baz()">
(attribute
  (attribute_name) @_attr
    (#match? @_attr "^[:@][a-z]+")
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.language "javascript"))

(attribute
    (attribute_name) @_attribute_name (#match? @_attribute_name "^style$")
    (quoted_attribute_value (attribute_value) @injection.content)
    (#set! injection.language "css"))

(attribute
    (attribute_name) @_attribute_name (#match? @_attribute_name "^on[a-z]+$")
    (quoted_attribute_value (attribute_value) @injection.content)
    (#set! injection.language "javascript"))
