# Ejemplo de Macro en Swift

## Introducción

Las macros en Swift permiten generar código en tiempo de compilación, lo que reduce la necesidad de tareas repetitivas, mejora el mantenimiento y asegura la consistencia en tu código. Este README proporcionará una visión general sobre qué son las macros, los tipos de macros, y un ejemplo de cómo crear una macro básica en Swift.

## ¿Qué es una Macro?

Una **macro** en Swift es una forma de escribir código que genera automáticamente otro código durante el proceso de compilación. Son útiles para eliminar código repetitivo y mejorar el rendimiento, ya que ciertas operaciones se definen y optimizan antes de que la aplicación se ejecute.

Las macros permiten que el código sea más eficiente, manteniendo las tareas comunes automatizadas y optimizadas, reduciendo los errores comunes en patrones de código repetitivos.

## Tipos de Macros

Existen diferentes tipos de macros en Swift. La siguiente imagen muestra una clasificación general:

![Tipos de macros](https://asynclearn.com/static/9ca59f93d12266a5e076ad558fdb67c2/819a9/macro-types.png)

### Tipos Principales:

1. **Expression Macros (Macros de Expresión):** Generan expresiones y valores.
2. **Declaration Macros (Macros de Declaración):** Añaden declaraciones (por ejemplo, funciones, propiedades).
3. **Code-Generation Macros (Macros de Generación de Código):** Automatizan la creación de grandes bloques de código basados en reglas definidas.

## Ejemplo de Macro en Swift

A continuación se muestra un ejemplo básico de cómo definir y usar una macro en Swift:

```swift
@macro
public macro AutoInit() = #externalMacro(module: "MyMacroModule", type: "AutoInitMacro")

// Uso de la macro para generar automáticamente el código de inicialización
struct User {
    var id: Int
    var name: String
    var email: String

    // La macro generará automáticamente el inicializador basado en las propiedades
    #AutoInit
}
