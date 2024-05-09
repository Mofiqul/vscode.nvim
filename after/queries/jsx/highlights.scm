;; extends
(jsx_opening_element
  ((identifier) @type
    (#lua-match? @type "[A-Z]")))

(jsx_closing_element
  ((identifier) @type
    (#lua-match? @type "[A-Z]")))

(jsx_opening_element
  ((identifier) @type
    (#lua-match? @type "%-")))

(jsx_closing_element
  ((identifier) @type
    (#lua-match? @type "%-")))

(jsx_opening_element
  (member_expression
    (identifier) @type
    (property_identifier) @type))

(jsx_closing_element
  (member_expression
    (identifier) @type
    (property_identifier) @type))

(jsx_self_closing_element
  ((identifier) @type
    (#lua-match? @type "[A-Z]")))

(jsx_self_closing_element
  ((identifier) @type
    (#lua-match? @type "%-")))

(jsx_self_closing_element
  (member_expression
    (identifier) @type
    (property_identifier) @type))
