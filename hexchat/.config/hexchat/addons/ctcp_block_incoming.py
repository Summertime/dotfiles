import re

import hexchat

__module_name__        = 'ctcp_block_incoming'
__module_version__     = '1.0a'
__module_description__ = 'Blocks all incoming CTCP messages sans ACTION'

ctcp_re = re.compile(r'PRIVMSG [^ ]+ :\x01([^ ]+)', re.I)

def ctcp_block_cb(word, word_eol, userdata):
    line = word_eol[0]
    match = ctcp_re.search(line)
    if match and match.group(1).lower() != 'action':
        print('Blocked CTCP:', repr(line))
        return hexchat.EAT_ALL

hexchat.hook_server('PRIVMSG', ctcp_block_cb)
