; Indent after opening tags
(start_tag) @indent.begin

; Dedent closing tags
(end_tag) @indent.end

; Dedent self-closing tags
(self_closing_tag) @outdent

; Indent Latte named blocks
(block) @start

; Indent Latte control blocks
(if_block) @start
(loop_block) @start
(switch_block) @start
(capture_tag) @start

; Dedent else and elseif - these reset indentation within their parent blocks
(else_block) @outdent
(elseif_block) @outdent
(case_block) @outdent
(default_case_block) @outdent

; html
(start_tag ">" @end) @indent
(self_closing_tag "/>" @end) @indent

(element
  (start_tag) @start
  (end_tag)? @end) @indent
