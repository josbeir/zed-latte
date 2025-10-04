; inherits: html

; HTML highlighting
(tag_name) @tag
(erroneous_end_tag_name) @tag.error
(doctype) @constant
(attribute_name) @attribute
(attribute_value) @string
(entity) @constant.character.escape

; HTML punctuation
[
  "<"
  ">"
  "</"
  "/>"
] @punctuation.bracket

; Latte comments
(comment) @comment

; Latte blocks - control flow blocks
(if_block) @keyword.control
(loop_block) @keyword.control
(switch_block) @keyword.control
(block) @keyword.control

; Directive tags - start and end tokens
(directive_start) @keyword.control
(directive_end) @keyword.control

; Note: PHP expressions inside control flow tags {if $var}, {foreach $items}, {while $x}, etc.
; are tokenized in the grammar and highlighted via PHP injection queries (see injections.scm)

; Latte print tags - highlight differently from variables
(latte_print_tag) @tag.builtin

; Latte variables - inside {$var}
(latte_variable) @variable.member

; PHP variables
(php_variable
  "$" @punctuation.special
  name: (identifier) @variable.builtin)

; PHP content - highlighted via injection
(php_only) @embedded

; Latte special tags
(latte_assignment_tag) @keyword.directive
(var_type_tag) @keyword.type
(template_type_tag) @keyword.type
(capture_tag) @keyword.directive
(embed_tag) @keyword.directive

; File-related tags with structured highlighting
(latte_file_tag
  tag_name: (file_tag_name) @keyword.directive)

(file_path
  (string_literal) @string.special.path)

; Macro calls - {CustomTag args}
(macro_call
  name: (macro_name) @function.macro
  arguments: (php_only)? @parameter)

; PHP block {php ...}
(php_block) @function

; Latte filters - highlight the pipe and filter name
(filter_chain
  (filter
    "|" @operator
    filter_name: (filter_name) @function.method))

; Literals
(string_literal) @string
(number_literal) @number
(boolean_literal) @boolean
(null_literal) @constant.builtin

; N-attributes - Latte attributes in HTML tags (n:if, n:foreach, etc.)
; Highlight attribute names starting with "n:"
(attribute
  (attribute_name) @attribute.special
  (#match? @attribute.special "^n:"))

; Latte delimiters - make them stand out
"{=" @punctuation.special

[
  "{"
  "}"
] @punctuation.bracket

"|" @operator

; Text content
(text) @none
