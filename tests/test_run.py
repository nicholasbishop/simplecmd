import subprocess
import unittest

import simplecmd

class TestRun(unittest.TestCase):
    def test_fail(self):
        with self.assertRaises(subprocess.CalledProcessError):
            simplecmd.run('python', '-c', 'exit(1)')

    def test_capture(self):
        output = simplecmd.run('python', '-c', 'print("hello")', capture=True)
        self.assertEqual(output.decode('utf-8'), 'hello\n')
