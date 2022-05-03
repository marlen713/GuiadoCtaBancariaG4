# Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un
# número de dígitos distinto a 8.
# (se puede ocupar el método .digits para obtener los dígitos y .count para contarlos)
# (1 Punto)
# ● Agregar un tercer parámetro opcional al constructor que permita establecer si una
# cuenta es VIP (1pto), este valor puede ser 1 o 0. Por defecto será 0.
# ● Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta
# con un prefijo '1-' si es vip y '0-' si no lo es.
# Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver
# '1-00112233'. (1 Punto)

class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, cuenta, vip = 0)
        raise RangeError, 'el numero de cuenta no tiene 8 digitos' if cuenta.length != 8
        @nombre_de_usuario = nombre_de_usuario
        @cuenta = cuenta
        @vip = vip
    end
    def numero_de_cuenta
        "#{@vip}-#{@cuenta}"
    end
end
puts CuentaBancaria.new('Marlen', '00112233', 1).numero_de_cuenta