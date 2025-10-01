; Indent after opening tags
(start_tag) @indent

; Indent Latte blocks
(block_start) @indent

; Dedent closing tags
(end_tag) @outdent

; Dedent Latte block ends
(block_end) @outdent

; Dedent self-closing tags
(self_closing_tag) @outdent

; Dedent else and elseif
(else_block) @branch
(elseif_block) @branch
