# ContactList
Приложение на основе [UITableView](https://developer.apple.com/documentation/uikit/uitableview), в котором отображается список людей с рандомными именами и фамилиями.

<img width="350" alt="SCR-20230130-htk" src="https://user-images.githubusercontent.com/50861298/215421685-3c67fe2b-7a83-468a-a494-87310cdb46ff.png">
При выборе контакта из списка открывается экран с детальной информацией: полное имя, email и телефон.

<img width="350" alt="SCR-20230130-hw5" src="https://user-images.githubusercontent.com/50861298/215422128-8a5796a5-f334-48a4-8237-52d980ea73e6.png">
 - Создана модель данных Person со всеми необходимыми свойствами. В качестве модели определена структура.
 - Для хранения данных создан отдельный класс DataStore. В классе объявлены четыре массива типа String со списками
имен, фамилий, email и телефонов.
 - Для создания экземпляра Person() используются рандомные элементы соответствующих массивов.
 - Для отображения данных в приложении используется значение экземпляра Person()
 - Все значения для каждого человека уникальны. Нет одинаковых фамилий и имен, телефонов и е-мейлов
 
 <img width="350" alt="SCR-20230130-hwf" src="https://user-images.githubusercontent.com/50861298/215422223-64ce04c5-8877-4f45-bdb2-828a87dab739.png">
 
На втором экране, с использованием [UITabBarController](https://developer.apple.com/documentation/uikit/uitabbarcontroller), отображается весь список контактов с детальной информацией. Для этого используются секции, в качестве заголовков для которых передается полное имя контакта. Каждая секция содержит 2 строки с email и телефоном.
