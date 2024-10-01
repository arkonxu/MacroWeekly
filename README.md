# Ejemplo de Macro en Swift

## Introducción

Las macros en Swift permiten generar código en tiempo de compilación, lo que reduce la necesidad de tareas repetitivas, mejora el mantenimiento y asegura la consistencia en tu código.

## ¿Qué es una Macro?

Una **macro** en Swift es una forma de escribir código que se genera automáticamente durante el proceso de compilación. Son útiles para eliminar código repetitivo y mejorar el rendimiento, ya que ciertas operaciones se definen y optimizan antes de que la aplicación se ejecute.

Las macros permiten que el código sea más eficiente, manteniendo las tareas comunes automatizadas y optimizadas, reduciendo los errores comunes en patrones de código repetitivos.

## Ventajas de Usar Macros

1. **Reducción de Código Repetitivo**: Al utilizar macros, se puede evitar la duplicación de código, lo que facilita el mantenimiento y la legibilidad del mismo.

2. **Consistencia**: Las macros garantizan que el código generado sea uniforme, lo que reduce la posibilidad de errores al copiar y pegar código similar en diferentes partes de la aplicación.

3. **Optimización en Tiempo de Compilación**: Al generar código en el momento de la compilación, se pueden realizar optimizaciones que mejoran el rendimiento de la aplicación en tiempo de ejecución.

4. **Facilidad de Mantenimiento**: Las macros permiten modificar un solo lugar en el código para actualizar todas las instancias donde se aplica la macro, facilitando así el mantenimiento.

## Tipos de anotacion `@attached`

La anotación `@attached` permite especificar cómo y dónde se puede aplicar la macro. Aquí hay una descripción de los parámetros que se pueden utilizar:

1. **member**: Indica que la macro puede adjuntarse a miembros de clases o estructuras.

2. **accessor**: Permite que la macro se adjunte a métodos que actúan como accesores (getters y setters) para propiedades.

3. **conformance**: Utilizado para que la macro agregue conformidad a un protocolo a una clase o estructura.

4. **extension**: Habilita que la macro se aplique como una extensión de tipos existentes.

5. **memberAttribute**: Se usa para adjuntar atributos a miembros de clases o estructuras.

6. **peer**: Permite agregar funcionalidades que afectan a instancias de tipos específicos o modifican el comportamiento de tipos en relación con otros.

## Tipos de Macros `freestanding`

Además de las macros adjuntas, Swift también admite macros **freestanding** que operan de manera más flexible en diferentes partes del código.

1. **`declaration`**: Las macros `declaration` operan sobre declaraciones completas como clases, funciones o variables. Este tipo de macro te permite generar o modificar declaraciones antes de que el código se compile.
2. **`expression`**: Las macros expression se utilizan para modificar o generar nuevas expresiones dentro de las declaraciones, como operaciones matemáticas o condiciones.
