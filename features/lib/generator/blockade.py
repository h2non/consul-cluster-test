
class Blockade:

    DEFAULTS = {
        'addr': '0.0.0.0:7401',
        'instance_expiration_time': 300,
        'name': 'default-name',
        'data_dir': '.',
        'key_file': '',
        'load_balancer_addr': '0.0.0.0:7777',
        'private_addr': '0.0.0.0:7771',
        'public_addr': '0.0.0.0:7772',
        'snapshot_count': 2000,
        'force': False,
        'snapshot': True,
        'verbose': False,
    }

    def __init__(self):
        self.params = DEFAULTS.copy()

    def append(self, key, value):
        self.params[key] = value

    def remove(self, key):
        params.remove(key)

    def render(self)
        buf = []
        for key, value in self.params():
            if type(value) is str:
                buf.append("%s = %s" % (key, value))
        buf.join('\n')
        buf
