# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  [
    {
      "name": "Admin",
      "username": "admin",
      "email": "admin@gmail.com",
      "password": "123456789$",
      "password_confirmation": "123456789$",
      "role": "admin"
    },
    {
      "name": "Testa",
      "username": "testa",
      "email": "testa@gmail.com",
      "password": "1234567",
      "password_confirmation": "1234567",
      "role": "user"
    },
    {
      "name": "Testee",
      "username": "testee",
      "email": "testee@gmail.com",
      "password": "123456789",
      "password_confirmation": "123456789",
      "role": "user"
    }
  ]
)

Car.create([
  {
    "make": "Benz",
    "model": "G Wagon",
    "image": "https://i.pinimg.com/originals/2a/1d/6f/2a1d6f0fa740a4a7e8e05dccd2b3b98a.png",
    "color": "blue",
    "year": 2010,
    "engine": "Automatic",
    "seat": 5,
    "aircon": true,
    "price": "200000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:30:10.657Z",
    "updated_at": "2022-06-08T21:30:10.657Z",
    "description": "The G-Class is built like a tank and weighs almost as much as one, which is why it understeers when pushed and the brake pedal felt spongy in our tests."
  },
  {
    "make": "Aston Martins",
    "model": "DBS Superleggera",
    "image": "https://amsc-prod-cd.azureedge.net/-/media/aston-martin/images/default-source/models/halo-specs-nov-21/am735_web.png?mw=1920&rev=3646b9c86b8a4cc49acb2dc1e59dfda1&hash=10B15D28FE6AD05B1031F976CA4F1D5C",
    "color": "#D9BF00",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "250000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:35:20.439Z",
    "updated_at": "2022-06-08T21:35:20.439Z",
    "description": "DBS Superleggera is the new brand model and the best expression of the current design language. Although it is based on DB11, the DBS body is unique, with the exception of the roof."
  },
  {
    "make": "Polestar",
    "model": "Polestar 1",
    "image": "https://platform.cstatic-images.com/xlarge/in/v2/stock_photos/7707c436-8efb-48b4-a23f-dbc9220b3274/229ba39c-1358-4804-87b6-b7eb42d68fae.png",
    "color": "#F2F2F2",
    "year": 2022,
    "engine": "Automatic",
    "seat": 2,
    "aircon": true,
    "price": "18000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:37:57.687Z",
    "updated_at": "2022-06-08T21:37:57.687Z",
    "description": "The Polestar brand is concentrated not only on performance but also on design. The company's first attempt, Polestar 1, has a fleeting similarity with the high-class Ford Mustang, but with a cleaner simplicity of lines."
  },
  {
    "make": "Buggatit",
    "model": "Buggati Chiron",
    "image": "https://i.pinimg.com/originals/e9/34/ac/e934ac022c9ecf2dadf6954610176627.png",
    "color": "#018CF3",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "1000000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:39:46.585Z",
    "updated_at": "2022-06-08T21:39:46.585Z",
    "description": "Bugatti Chiron, the successor of the cult high-speed model VEYRON is much more beautiful than its predecessor. The design is more aggressive, with enlarged air intakes and deflectors."
  },
  {
    "make": "Ford",
    "model": "Ford GT",
    "image": "https://purepng.com/public/uploads/large/purepng.com-ford-gt-blue-carcarvehicletransportford-9615246518465syar.png",
    "color": "#7BCEFB",
    "year": 2010,
    "engine": "Automatic",
    "seat": 2,
    "aircon": true,
    "price": "1000000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:42:17.666Z",
    "updated_at": "2022-06-08T21:42:17.666Z",
    "description": "Ford has updated its GT supercar in 2020, and together with it, a body version of the entire carbon fibre appeared."
  },
  {
    "make": "Porsche",
    "model": "Porsche Taycan",
    "image": "https://www.pngmart.com/files/22/Porsche-Taycan-2020-PNG-Transparent.png",
    "color": "#080807",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "200000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:44:01.454Z",
    "updated_at": "2022-06-08T21:44:01.454Z",
    "description": "Porsche Taycan instils hope for aesthetes to the future of electric mobility. Like Panamera, Taycan has four doors, but he has a trunk instead of Luke, and it looks as if the 911th was melted and stretched."
  },
  {
    "make": "Lexus",
    "model": "Lexus LC",
    "image": "https://www.pngall.com/wp-content/uploads/12/Lexus-PNG-Images-HD.png",
    "color": "Yellow",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "10000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:45:51.911Z",
    "updated_at": "2022-06-08T21:45:51.911Z",
    "description": "Lexus LC has a classic proportion of Grand Tourer LC. It is decorated with a spectacular lattice in the form of an hourglass, squinting headlights, impressively wide and muscular rear wings, and a roof that seems soaring due to darkened C-racks. In the design of Lexus, there is no minimalism, but we think that his science fiction details make a car even more beautiful."
  },
  {
    
    "make": "Mazda",
    "model": "Mazda 3",
    "image": "https://www.pngkey.com/png/full/340-3405570_sonic-silver-metallic-2018-mazda-3-hatchback-png.png",
    "color": "#C0C0C2",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "12000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:47:19.548Z",
    "updated_at": "2022-06-08T21:47:19.548Z",
    "description": "Mazda 3 of the previous generation was already one of our favourite models on the market, but the new Mazda 3 is even better. Keep in mind that this is a car with complex body panels, the form of which allows you to use the light in your own interests. Folding and body lines are minimized."
  },
  {
    
    "make": "Audi",
    "model": "Audi RS7 Avant",
    "image": "https://www.freeiconspng.com/uploads/sport-grey-audi-rs6-avant-car-png-image-5.png",
    "color": "#C0C0C2",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "11000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:49:27.588Z",
    "updated_at": "2022-06-08T21:49:27.588Z",
    "description": "The latest cars of Audi RS with the V8 engine offer a magnificent German design. RS6 Avant and RS7 have wider wings and less ground clearance, which gives them an aggressive, but elegant road view."
  },
  {
    
    "make": "Alfa Romeo",
    "model": "Giulia Quadrifoglio",
    "image": "https://pngimg.com/uploads/alfa_romeo/alfa_romeo_PNG37.png",
    "color": "#6F6F6D",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "8000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:50:58.232Z",
    "updated_at": "2022-06-08T21:50:58.232Z",
    "description": "A sharp grill in the form of the Alfa Romeo shield may not be for everyone, but Giulia looks very good with it."
  },
  {
    
    "make": "Mercedes",
    "model": "Metallic Benz M-Class",
    "image": "https://pics.clipartpng.com/midle/Dark_Silver_Metallic_Mercedes_Benz_M_Car_PNG_Clipart-113.png",
    "color": "#ABA9AD",
    "year": 2012,
    "engine": "Automatic",
    "seat": 5,
    "aircon": true,
    "price": "15000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:50:58.232Z",
    "updated_at": "2022-06-08T21:50:58.232Z",
    "description": "A sharp grill in the form of the Alfa Romeo shield may not be for everyone, but Giulia looks very good with it."
  }
])

Reservation.create(
  [
    {
      "pick_up_date": "2022-09-13",
      "drop_off_date": "2022-09-14",
      "pick_up_city": "Hyderabad",
      "return_city": "secunderabad",
      "user_id": "1",
      "car_id": "3"
    },
    {
      "pick_up_date": "2022-09-13",
      "drop_off_date": "2022-09-14",
      "pick_up_city": "Hyderabad",
      "return_city": "secunderabad",
      "user_id": "3",
      "car_id": "4"
    },
    {
      "pick_up_date": "2022-09-13",
      "drop_off_date": "2022-09-14",
      "pick_up_city": "Hyderabad",
      "return_city": "secunderabad",
      "user_id": "2",
      "car_id": "6"
    },
    {
      "pick_up_date": "2022-09-13",
      "drop_off_date": "2022-09-14",
      "pick_up_city": "Hyderabad",
      "return_city": "secunderabad",
      "user_id": "3",
      "car_id": "5"
    },
  ]
)
