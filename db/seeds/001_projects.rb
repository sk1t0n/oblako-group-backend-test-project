todosFamily = [
  Todo.new(text: 'Купить молоко', isCompleted: false),
  Todo.new(text: 'Заменить масло в двигателе до 23 апреля', isCompleted: false),
  Todo.new(text: 'Отправить письмо бабушке', isCompleted: true),
  Todo.new(text: 'Заплатить за квартиру', isCompleted: false),
  Todo.new(text: 'Забрать обувь из ремонта', isCompleted: false)
]

Project.new(title: 'Семья', todos: todosFamily).save

todosWork = [
  Todo.new(text: 'Позвонить заказчику', isCompleted: true),
  Todo.new(text: 'Отправить документы', isCompleted: true),
  Todo.new(text: 'Заполнить отчет', isCompleted: false)
]

Project.new(title: 'Работа', todos: todosWork).save

todosOther = [
  Todo.new(text: 'Позвонить другу', isCompleted: false),
  Todo.new(text: 'Подготовиться к поездке', isCompleted: false)
]

Project.new(title: 'Прочее', todos: todosOther).save
