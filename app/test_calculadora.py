import unittest
from calculadora import somar, subtrair, multiplicar, dividir

class TestCalculadora(unittest.TestCase):
    def test_somar(self):
        self.assertEqual(somar(2, 3), 5)

    def test_subtrair(self):
        self.assertEqual(subtrair(5, 2), 3)

    def test_multiplicar(self):
        self.assertEqual(multiplicar(3, 4), 12)

    def test_dividir(self):
        self.assertEqual(dividir(10, 2), 5)

    def test_dividir_por_zero(self):
        with self.assertRaises(ValueError):
            dividir(10, 0)

if __name__ == "__main__":
    unittest.main()
