assert_eq('lawl'.partition('a'), ('l', 'a', 'wl'))
assert_eq('lawl'.rpartition('a'), ('l', 'a', 'wl'))
assert_eq('google'.partition('o'), ('g', 'o', 'ogle'))
assert_eq('google'.rpartition('o'), ('go', 'o', 'gle'))
assert_eq('xxx'.partition('x'), ('', 'x', 'xx'))
assert_eq('xxx'.rpartition('x'), ('xx', 'x', ''))
assert_eq(''.partition('a'), ('', '', ''))
assert_eq(''.rpartition('a'), ('', '', ''))

# _inconsistency_: go has no default value for separator in partion()
# default separator
# assert_eq('hi this is a test'.partition(), ('hi', ' ', 'this is a test'))
# assert_eq('hi this is a test'.rpartition(), ('hi this is a', ' ', 'test'))
# assert_eq('google'.partition(), ('google', '', ''))
# assert_eq('google'.rpartition(), ('', '', 'google')) 

# no match
assert_eq('google'.partition('x'), ('google', '', ''))
assert_eq('google'.rpartition('x'), ('', '', 'google'))

# at word boundaries
assert_eq('goog'.partition('g'), ('', 'g', 'oog'))
assert_eq('goog'.rpartition('g'), ('goo', 'g', ''))
assert_eq('plex'.partition('p'), ('', 'p', 'lex'))
assert_eq('plex'.rpartition('p'), ('', 'p', 'lex'))
assert_eq('plex'.partition('x'), ('ple', 'x', ''))
assert_eq('plex'.rpartition('x'), ('ple', 'x', ''))

assert_eq('google'.partition('oog'), ('g', 'oog', 'le'))
assert_eq('google'.rpartition('oog'), ('g', 'oog', 'le'))
assert_eq('lolgooglolgooglolgooglol'.partition('goog'), ('lol', 'goog', 'lolgooglolgooglol'))
assert_eq('lolgooglolgooglolgooglol'.rpartition('goog'), ('lolgooglolgooglol', 'goog', 'lol'))

# full string
assert_eq('google'.partition('google'), ('', 'google', ''))
assert_eq('google'.rpartition('google'), ('', 'google', ''))

---
'google'.partition('') ### Empty separator
---
'google'.rpartition('') ### Empty separator
