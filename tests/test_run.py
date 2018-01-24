import subprocess
import unittest

import simplecmd

class TestRun(unittest.TestCase):
    def test_fail(self):
        with self.assertRaises(subprocess.CalledProcessError):
            simplecmd.run('python', '-c', 'exit(1)')
