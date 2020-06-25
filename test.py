from unittest import TestCase
from unittest.mock import patch

from main import run


class Test(TestCase):
    @patch('main.requests')
    def test(self, requests):
        """ Uses requests """
        run()
        requests.get.assert_called_once_with('https://example.org')
