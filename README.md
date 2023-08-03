# flutter_tecnic_proof

Prueba técnica - Listado de productos

## Observaciones

Proyecto realizado con Flutter y Bloc Cubit con listado de productos mostrado con paginado infinito y vista de detalles de producto
- Paquetes y herramientas utilizados:
  - Flutter_bloc: Como sistema de gestión de estados.
  - Get_it: Service locator para los distintos cubits y repositories del proyecto (también he utilizado "Locator" en otros proyectos)
  - Freezed: Para los modelos y DTOs del proyecto (Los DTOs los utilizo para el intercambio de datos entre el cubit y el repository)
  - Json_serializable: Para obtener los datos de un json y transformarlos cómodamente en el modelo correspondiente.
  - Either: Sistema de control de excepciones que sustituye al try/catch y añade muchas más funcionalidades.
  - Dio: Herramienta de conexión con la api con opciones de retry, cache y distintas configuraciones.
  - Infinite_scroll_pagination: Para la paginación infinita del listado de productos.
  - Url_launcher: Para abrir links externos (En este proyecto lo he utilizado para el botón de llamada).
 
Apenas he tenido unas 2 horas de tiempo de desarrollo al día a partir del martes, por lo que hay varias cosas que me gustaría haber mejorado o haber hecho de forma diferente:
  - Estructuración del código: Aunque la estructura en esencia es la que suelo utilizar para proyectos más grandes, con más tiempo podría haberlo componentizado más, o incluso haberlo dividido en diferentes packages en caso de que fuera necesario.
  - Sistema de control de excepciones: Podría haber aprovechado mejor la erramienta Either para controlar mejor las distintas excepciones que se pueden producir.
  - Conexión con la api: Se podría haber añadido un sistema de retry e incluso de caché para mejorar y agilizar la conexión con la api.
  - Diseño: Se podría haber mejorado el diseño, sobretodo en la vista de detalles del producto, ya que no hay mucha información que mostrar y por lo tanto se queda un poco "vacía" (Lo he intentado solucionar añadiendo alguna imagen).

En la vista de detalles no he visto necesario utilizar cubit, ya que es una vista estática que solo muestra datos que recibimos de la vista anterior. He intentado buscar una excusa para que la vista fuera más dinámica y tener algo que añadir al state, pero no había nada.
