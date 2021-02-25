from unittest import TestCase

from app.main import the_sum


class TestApp(TestCase):
    def test_the_sum(self):
        """ Sums a and b correctly """
        result = the_sum(1, 2)
        self.assertEqual(result, 3)
