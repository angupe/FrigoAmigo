# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create ([
  {name: "Raul", email: "raul@ironhack.com", password: "ironhack", password_confirmation: "ironhack"},
  {name: "Alex", email: "alex@ironhack.com", password: "ironhack", password_confirmation: "ironhack"},
  {name: "Alfonso", email: "alfonso@ironhack.com", password: "ironhack", password_confirmation: "ironhack"},
  {name: "Antonio", email: "tony@ironhack.com", password: "ironhack", password_confirmation: "ironhack"}
  ])



tortilla_patatas = Meal.create(name: "Tortilla de patatas", description: "Pelamos y cortamos las patatas en trozos finos e irregulares.
Cortamos la cebolla en cuadraditos pequeños. Mezclamos la cebolla con las patatas y salamos al gusto.
Ponemos abundante aceite en una sartén y cuando esté caliente añadimos la mezcla de patatas y cebolla.
Dejamos que se haga a fuego medio. Cuando las patatas estén blanditas (entre cocidas y fritas) apagamos el fuego.
Batimos los 6 huevos con una pizca de sal y añadimos las patatas y la cebolla bien escurridas de aceite.
Retiramos la mayor parte del aceite de la sartén dejando solo un poco para cuajar la tortilla.
Cuando el aceite este caliente vertemos la mezcla en la sartén. Cuando se haya cuajado por un lado le damos la vuelta con ayuda de un plato o tapadera.
Cuando esté cuajada por ambos lados la retiramos a un plato. Se sirve caliente, templada o fría.", photo: "http://res.cloudinary.com/angupe/image/upload/v1475060060/Tortilla_qomcmi.png", category: "Plato principal", time: "40 minutos", difficulty: "Media", serves: "2 Personas")

tortilla_patatas.ingredients.create([
  {name: "patatas", quantity: 4, unit: "Grandes"},
  {name: "huevos", quantity: 6, unit: "M"},
  {name: "cebolla", quantity: 1, unit: "Grande"},
  {name: "aceite", quantity: 150, unit: "ml"}
  ])

huevos_fritos = Meal.create(name: "Huevos fritos con patatas", description: "Se pelan las patatas y se parten a tiras, se fríen en abundante aceite de oliva - dos por persona.
Se fríen tantos huevos como la persona vaya a comer. Se sirven las patatas fritas con los huevos fritos en un plato.", photo: "http://res.cloudinary.com/angupe/image/upload/v1475065732/huevos_fritos_phyfab.jpg", category: "Plato principal", time: "10 minutos", difficulty: "Fácil", serves: "2 Personas")

huevos_fritos.ingredients.create([
  {name: "patatas", quantity: 2, unit: "Grandes"},
  {name: "huevos", quantity: 2, unit: "M"},
  {name: "aceite", quantity: 150, unit: "ml"},
  {name: "sal", quantity: 1, unit: "Pizca"}
  ])

gazpacho = Meal.create(name: "Gazpacho", description: "Retira la corteza de las rebanadas de pan, córtalas en tiras y después en dados. Colócalos en el vaso de la batidora.
Limpia los tomates, con un cuchillo retírales el tallo, trocéalos a tu gusto y añádelos al vaso batidor.
Pela el pepino (reserva un trozo), el diente de ajo y el pimiento, pícalos a tu gusto e introdúcelos con el resto de ingredientes.
Vierte 1/2 l de agua, el aceite y el vinagre. Sazona a tu gusto y tritura con la batidora eléctrica con cuidado de no salpicar. Cuando consigas una crema homogénea, desenchufa la batidora.
Pásalo por un colador, introduce en el frigorífico (1 hora, mínimo) para que se enfríe bien.
En el momento de servir, pica el trocito de pepino reservado anteriormente en daditos y espolvorea la superficie.", photo: "http://res.cloudinary.com/angupe/image/upload/v1475065618/gazpacho_nodw3s.jpg")

gazpacho.ingredients.create([
  {name: "tomates", quantity: 6, unit: "Medianos"},
  {name: "pepino", quantity: 1, unit: "Pequeño"},
  {name: "pimiento verde", quantity: 1, unit: "Trozo"},
  {name: "ajo", quantity: 1, unit: "Diente"},
  {name: "pan de molde", quantity: 3, unit: "Rebanadas"},
  {name: "aceite", quantity: 3, unit: "Cucharadas"},
  {name: "vinagre", quantity: 1, unit: "Cucharadas"},
  {name: "sal", quantity: 1, unit: "Pizca"}
  ])

sopa_castellana = Meal.create(name: "Sopa Castellana", description: "Doramos (poco a poco, con fuego muy bajito) los ajos. Yo los pongo enteros, aunque partidos por la mitad, para que suelten más sabor. También se pueden poner laminados.
Cuando empiecen a estar un poco dorados (cuidado que no se quemen) añadimos el jamón cortado en trocitos pequeñitos, retiramos del fuego y echamos las rebanadas de pan (si es duro mejor, pero si no también sirve baguette o barra del día).
Empapamos el pan en el aceite (que lo chupe) y espolvoreamos pimentón.
Ponemos de nuevo en el fuego (siempre bajo-medio) y echamos el agua y la pastilla de caldo. Tenemos en el fuego unos 10-15 minutos.
Añadimos los huevos, con cuidado para que no se rompan, pero sin complicación. Según la fuerza del fuego, en un máximo de dos minutos estarán listos.
También, en caso de que nos guste la sopa algo más espesa, se puede añadir algún huevo más y reventarlo una vez cuajada la clara.", photo: "http://res.cloudinary.com/angupe/image/upload/v1475066329/sopa-ajo-castellana_r5a33o.jpg")

sopa_castellana.ingredients.create([
  {name: "pan", quantity: 4, unit: "Rebanadas"},
  {name: "huevos", quantity: 2, unit: "M"},
  {name: "jamon serrano", quantity: 3, unit: "Lonchas"},
  {name: "ajo", quantity: 6, unit: "Dientes"},
  {name: "caldo de carne", quantity: 1, unit: "pastilla"},
  {name: "pimenton", quantity: 1, unit: "cucharada"},
  {name: "aceite", quantity: 50, unit: "ml"}
  ])
