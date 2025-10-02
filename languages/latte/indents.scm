; Indent after opening tags
(start_tag) @indent

; Dedent closing tags
(end_tag) @outdent

; Dedent self-closing tags
(self_closing_tag) @outdent

; Indent Latte named blocks
(block) @indent

; Indent Latte control blocks
(if_block) @indent
(loop_block) @indent
(switch_block) @indent
(capture_tag) @indent

; Dedent else and elseif - these reset indentation within their parent blocks
(else_block) @outdent
(elseif_block) @outdent
(case_block) @outdent
(default_case_block) @outdent
