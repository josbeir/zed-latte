; HTML elements
(element) @indent

; Latte blocks
(block) @indent
(if_block) @indent
(loop_block) @indent
(switch_block) @indent
(capture_tag) @indent

; Dedent closing tags
(directive_end) @outdent

; Dedent structural blocks
(else_block) @indent
(elseif_block) @indent
(case_block) @indent
(default_case_block) @indent

; Bracket pairs
(_ "{" "}" @end) @indent
(_ "(" ")" @end) @indent
(_ "[" "]" @end) @indent
