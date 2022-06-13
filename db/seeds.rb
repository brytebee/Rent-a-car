# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Car.create([
  {
    "make": "Benz",
    "model": "G Wagon",
    "image": "https://www.motortrend.com/uploads/2022/02/2022-Mercedes-Benz-G-Class-AMG-G63-22.jpg",
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
    "image": "https://lh5.googleusercontent.com/4Aglc0RGGyMwOVNVbYLEj7QIiIHwersC5_xtkkN5pgHs1N_IjtaQ-jJg52nYOEbfw_e_rtpQfvfQQ1v7VPfTt_H2B0HMBxUofG3WwiuWCr56eu3CsaHxJb81osAMXMvQHQ1CWovQ",
    "color": "white",
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
    "image": "https://lh3.googleusercontent.com/XKAH3dx7KCnPVxD4bQY_qM_ptOXuWxah2ZsY3poTEUcFe4LVBi0S7Zo5EELIRi3TEhNj45I2ngV2lG1xjnDq31JYeccKZXi4n_QL6TPs-NZYwdL7G0gZ6NKhRPO6sCPz6BMzIjv3",
    "color": "white",
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
    "image": "https://lh4.googleusercontent.com/KCBicm__jeYuozd_VEcGda1Ai8eB3WPYTglrl36ZXLwTZi5a0iZiui8ackkDAB_JKwdOyCbOyr0J7tw47wzotsNFyjFs427yKDbWz-BxD2I6GIZEsd-aBzSspcclSJGzTP578GjE",
    "color": "white",
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
    "image": "https://lh3.googleusercontent.com/u7Kybs6wohqFFmh0ZqX8mGrYEVx0sAsLq5y5_77X_K3k4nR54uKbaRAhBHnByjQclv-47ACNSF_HyV8NmtSysm9Fh6ag1LkDXRXgrs8e1H4tVCeqC7hYtDkVJHlvDS7lOcjerqUS",
    "color": "gray",
    "year": 2022,
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
    "image": "https://lh4.googleusercontent.com/GEWmM7VjrUzgQjcmadMl95K8LE2R6LtWcO4AVx5SARCbBLW_JrldMVKZxEOqLEaDyxOq8Un-hWW5UtPCrTVr6XoVUJkAk-uRoZplfU_P-Dw_9eSh6bOOzw3OfqnTu3hOttoNEYAd",
    "color": "white",
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
    "image": "https://lh3.googleusercontent.com/4pYP-LQLAuHoJtByAqaAWvWv_K9bZE4ljCz9Gn3jBOSSBAq9q1YY32TpP_j0c4elSUveTQFtLg0riMzL2WFc-VT8kN83CinUnEtMKjy83lhVgd8pBf2p0Xn1yUWqQ4ylWhKkazIe",
    "color": "black",
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
    "image": "https://lh4.googleusercontent.com/m59p6kVZoQNGirQ2kwjdNQtQk2fEzpiXHUNG4wCeVyLcI288ioaQjpffWPqOp2FBbHYy0yeytp6RgAcZ9TgOiM-kV2c7930dbxbLfIwFcGwqp2h8G_iBE_iu31-h7ZqQXGTdHipl",
    "color": "black",
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
    "image": "https://lh5.googleusercontent.com/NToLEZ9691CU7NUeMDhIQnLrk7-ceiQtHlFaVS9WqfakThXt7qcpqfvr1u1WJB4UoHLpjIEgT0VmFnaYlmz2XcHoW5AqukS9FXAr0pJAQzl6MBiFp2Sojc9KJC7WekSyrPdD5G8k",
    "color": "black",
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
    "image": "https://lh6.googleusercontent.com/os0WFVqqM75BljDKaXepEN2lyC2cxK9vV4YNLWpDWCQfsYG_e1SNRD2gnF-jQz7MjvwQ0RI-vJsgSK2dubY6f3wLAKCcsiXCHZkbcCrrugVkjKfjp7HFDYV3Kmvu7DlJr_oduoav",
    "color": "red",
    "year": 2022,
    "engine": "Automatic",
    "seat": 4,
    "aircon": true,
    "price": "8000.0",
    "user_id": 1,
    "created_at": "2022-06-08T21:50:58.232Z",
    "updated_at": "2022-06-08T21:50:58.232Z",
    "description": "A sharp grill in the form of the Alfa Romeo shield may not be for everyone, but Giulia looks very good with it."
  }
])