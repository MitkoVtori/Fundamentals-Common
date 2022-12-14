/(?(DEFINE)
(?<address> (?&mailbox) | (?&group))
(?<mailbox> (?&name_addr) | (?&addr_spec))
(?<name_addr> (?&display_name)? (?&angle_addr))
(?<angle_addr> (?&CFWS)? < (?&addr_spec) > (?&CFWS)?)
(?<group> (?&display_name) : (?:(?&mailbox_list) | (?&CFWS))? ;
(?&CFWS)?)
(?<display_name> (?&phrase))
(?<mailbox_list> (?&mailbox) (?: , (?&mailbox))*)

(?<addr_spec> (?&local_part) \@ (?&domain))
(?<local_part> (?&dot_atom) | (?&quoted_string))
(?<domain> (?&dot_atom) | (?&domain_literal))
(?<domain_literal> (?&CFWS)? \[ (?: (?&FWS)? (?&dcontent))* (?&FWS)?
\] (?&CFWS)?)
(?<dcontent> (?&dtext) | (?&quoted_pair))
(?<dtext> (?&NO_WS_CTL) | [\x21-\x5a\x5e-\x7e])

(?<atext> (?&ALPHA) | (?&DIGIT) | [!#\$%&'*+-/=?^_`{|}~])
(?<atom> (?&CFWS)? (?&atext)+ (?&CFWS)?)
(?<dot_atom> (?&CFWS)? (?&dot_atom_text) (?&CFWS)?)
(?<dot_atom_text> (?&atext)+ (?: \. (?&atext)+)*)

(?<text> [\x01-\x09\x0b\x0c\x0e-\x7f])
(?<quoted_pair> \\ (?&text))

(?<qtext> (?&NO_WS_CTL) | [\x21\x23-\x5b\x5d-\x7e])
(?<qcontent> (?&qtext) | (?&quoted_pair))
(?<quoted_string> (?&CFWS)? (?&DQUOTE) (?:(?&FWS)? (?&qcontent))*
(?&FWS)? (?&DQUOTE) (?&CFWS)?)

(?<word> (?&atom) | (?&quoted_string))
(?<phrase> (?&word)+)
