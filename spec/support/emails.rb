INVALID_EMAILS = [
  'invalid@example-com',
  # period can not start local part
  '.invalid@example.com',
  # period can not end local part
  'invalid.@example.com',
  # period can not appear twice consecutively in local part
  'invali..d@example.com',
  # should not allow underscores in domain names
  'invalid@ex_mple.com',
  'invalid@example.com.',
  'invalid@example.com_',
  'invalid@example.com-',
  'invalid-example.com',
  'invalid@example.b#r.com',
  'invalid@example.c',
  'invali d@example.com',
  'invalidexample.com',
  'invalid@example.',
  # from http://tools.ietf.org/html/rfc3696, page 5
  # corrected in http://www.rfc-editor.org/errata_search.php?rfc=3696
  'Fred\ Bloggs_@example.com',
  'Abc\@def+@example.com',
  'Joe.\\Blow@example.com',
  "invalid@invalid.invalid"
]

VALID_EMAILS = [
  'valid@example.com',
  'Valid@test.example.com',
  'valid+valid123@test.example.com',
  'valid_valid123@test.example.com',
  'valid-valid+123@test.example.co.uk',
  'valid-valid+1.23@test.example.com.au',
  'valid@example.co.uk',
  'v@example.com',
  'valid@example.ca',
  'valid123.456@example.org',
  'valid@example.mobi',
  'valid@example.info',
]
