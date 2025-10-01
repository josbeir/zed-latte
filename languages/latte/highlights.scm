; Latte syntax highlighting queries
; Extends tree-sitter-html highlights

; Inherit HTML highlighting
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

; Latte control blocks
(if_block) @keyword.control
(foreach_block) @keyword.control
(for_block) @keyword.control
(while_block) @keyword.control
(switch_block) @keyword.control
(block) @keyword.control

; Latte macros
(macro) @keyword.directive
(macro_name) @function.macro
(macro_args) @parameter

; Latte print tags - highlight differently from variables
(latte_print_tag) @tag.builtin

; Latte variables - inside {$var}
(latte_variable) @variable.member

; PHP variables inside expressions
(php_variable
  "$" @punctuation.special
  name: (identifier) @variable.builtin)

; Latte special tags
(var_tag) @keyword.directive
(var_type_tag) @keyword.type
(template_type_tag) @keyword.type
(default_tag) @keyword.directive

; Type identifiers in varType and templateType
(type_identifier) @type

(capture_tag) @keyword.directive
(include_tag) @keyword.directive
(extends_tag) @keyword.directive
(layout_tag) @keyword.directive
(embed_tag) @keyword.directive
(import_tag) @keyword.directive
(sandbox_tag) @keyword.directive
(dump_tag) @keyword.directive
(debugbreak_tag) @keyword.directive
(template_print_tag) @keyword.directive
(var_print_tag) @keyword.directive

; Latte filters - highlight the pipe and filter name
(filter_chain
  (filter
    "|" @operator
    filter_name: (filter_name) @function.method
    filter_args: (filter_args)? @parameter))

; Latte functions and calls
(function_call
  function: (identifier) @function.call)

(static_call
  class: (identifier) @type
  "::" @punctuation.delimiter
  constant: (identifier)? @constant
  method: (identifier)? @function.method)

; Operators in expressions
(binary_expression
  operator: _ @operator)

(unary_expression
  operator: _ @operator)

(ternary_expression
  ["?" ":"] @operator)

; String and number literals
(string_literal) @string
(number_literal) @number
(boolean_literal) @boolean
(null_literal) @constant.builtin

; Identifiers in different contexts
(latte_variable
  name: (identifier) @variable.member)

(php_variable
  name: (identifier) @variable.builtin)

; Latte expressions in attributes
(latte_expression) @embedded

; Latte delimiters - make them stand out
[
  "{="
  "{$"
] @punctuation.special

[
  "{"
  "}"
] @punctuation.bracket

"|" @operator

; Text content
(text) @none
