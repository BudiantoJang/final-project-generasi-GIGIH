item1 = Item.create(
    name: "Nasi Goreng",
    description: "Nasi goreng adalah sebuah makanan berupa nasi yang digoreng dan diaduk dalam minyak goreng, margarin, atau mentega.",
    price: 15000
)
item2 = Item.create(
    name: "Capcay",
    description: "Capcay adalah masakan yang terbuat dari campuran aneka sayuran dengan tambahan bakso, daging, atau seafood.",
    price: 20000
)
item3 = Item.create(
    name: "Ayam Bakar",
    description: "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
    price: 25000
)

item4 = Item.create(
    name: "Soda Gembira",
    description: "Soda gembira adalah kreasi minuman dingin yang mencampurkan air soda, susu kental manis, dan sirop. ",
    price: 15000
)

item5 = Item.create(
    name: "Jus Alpukat",
    description: "Jus yang terbuat dari buah alpukat yang memiliki banyak khasiat dan memiliki rasa khas sseperti butter",
    price: 10000
)

item6 = Item.create(
    name: "Wedang Uwuh",
    description: "Wedang uwuh adalah minuman tradisional asal Jogja yang populer",
    price: 8000
)

category1 = Category.create(
    name: "Food"
)

category2 = Category.create(
    name: "Drinks"
)
category3 = Category.create(
    name: "Indonesian"
)

category4 = Category.create(
    name: "Ice"
)

category5 = Category.create(
    name: "Hot"
)

item_category1 = ItemCategory.create(
    item_id:1,
    category_id: 1
)

item_category2 = ItemCategory.create(
    item_id:1,
    category_id: 3
)

item_category3 = ItemCategory.create(
    item_id:2,
    category_id: 1
)

item_category4 = ItemCategory.create(
    item_id:3,
    category_id: 1
)

item_category5 = ItemCategory.create(
    item_id:3,
    category_id: 3
)

item_category6 = ItemCategory.create(
    item_id:4,
    category_id: 2
)

item_category7 = ItemCategory.create(
    item_id:4,
    category_id: 4
)

item_category8 = ItemCategory.create(
    item_id:5,
    category_id: 2
)

item_category9 = ItemCategory.create(
    item_id:5,
    category_id: 4
)
    
item_category10 = ItemCategory.create(
    item_id:5,
    category_id: 2
)

item_category11 = ItemCategory.create(
    item_id:5,
    category_id: 3
)

item_category12 = ItemCategory.create(
    item_id:5,
    category_id: 5
)
    
customer1= Customer.create(
    name: "Budianto",
    email: "budiantojang@gmail.com"
)

customer2= Customer.create(
    name: "Kak Iqbal Farrabi",
    email: "iqbal@gmail.com"
)

customer2= Customer.create(
    name: "Kak Zanya",
    email: "zanya@gmail.com"
)

order1 = Order.create(
    final_price: 60000,
    customer_id: 1,
    status: "PAID"
)

order2 = Order.create(
    final_price: 56000,
    customer_id: 2,
    status: "NEW"
)

order_detail1 = OrderDetail.create(
    quantity: 2,
    total_price: 30000,
    item_id: 1,
    order_id: 1
)

order_detail2 = OrderDetail.create(
    quantity: 2,
    total_price: 30000,
    item_id: 4,
    order_id: 1
)

order_detail3 = OrderDetail.create(
    quantity: 2,
    total_price: 40000,
    item_id: 2,
    order_id: 2
)

order_detail4 = OrderDetail.create(
    quantity: 2,
    total_price: 16000,
    item_id: 6,
    order_id: 2
)
