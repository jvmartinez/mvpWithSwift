# Tutorial de mvp con wift

**Que es un patron de diseño?**

  Un patrón de diseño resulta ser una solución a un problema de diseño. Para que una solución sea considerada un patrón debe poseer ciertas características. Una de ellas es que debe haber comprobado su efectividad resolviendo problemas similares en ocasiones anteriores. Otra es que debe ser reutilizable, lo que significa que es aplicable a diferentes problemas de diseño en distintas circunstancias

fuente: https://es.wikipedia.org/wiki/Patr%C3%B3n_de_dise%C3%B1o

**Que es el MVP?**

  El patron de diseño Model view Presenter(MVP), Nos permite desacoplar la lógica de presentación de las vistas, haciendo la vista nula que quieres decir esto que la vista no posee ninguna logica, dicho en otras palabras la vista no sabe que existe un modelo y el modelo no sabe que existe una vista

fuente: https://es.wikipedia.org/wiki/Modelo%E2%80%93vista%E2%80%93presentador
![alt text](https://joseangelmaneiro.com/wp-content/uploads/2018/01/Captura-de-pantalla-2018-01-12-a-las-17.42.33.png)

**Creando nuestro proyecto**

  Ya que tenemos una nocion de que es un patron de diseño vamos a crear nuestro proyeto con el patron MVP.
En primer lugar, abre Xcode y luego completa los campos para crear un nuevo proyecto.

**Definiendo estructura**
  Cuando realicemos el desarrollo de un componente lo separaremos dentro de una carpeta y crearemos las clases y los protocolos segun el componente a trabajar por ejemplo:
  ```
    Carpeta: Login
    Clase: LoginViewController.swift // Esta es nuestra vista de la clase
    Clase: LoginPresenter.swift // Esta sera nuestra clase presentador el cual tomara las decisiones. 
    Componte: LoginViewController.xib // Interfaz de la vista.
    protocol(Interfaz): LoginContract.swift // Aqui se encontrara los acciones que realizara la vista y el presentador. 
    
  ```