// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp()); // function provided in material.dart
// } // automatically executed when app launches

// class MyApp extends StatelessWidget {
//   @override // decorator ~stylistic
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Text('Hello to the World!'),
//     );
//   }
// }
// // every class has to extend either a Stateful or a Stateless widget and which will inturn always call the build method
// ================================================================================

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text('My First App')),
//             body: Text('This is my default body text!')));
//   }
// }
// =============================================================================================

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   void answerQuestion() {
//     print('Answer Chosen!');
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text('Ronit\'s Personality App')),
//             body: Column(
//               children: [
//                 Text('Question 1'),
//                 ElevatedButton(
//                   child: Text('Answer 1'),
//                   onPressed: answerQuestion,
//                 ),
//                 ElevatedButton(
//                   child: Text('Answer 2'),
//                   onPressed: () => print('Answer 2 chosen!'),
//                 ),
//                 ElevatedButton(
//                   child: Text('Answer 3'),
//                   onPressed: () {
//                     print('Answer 3 chosen');
//                   },
//                 ),
//               ],
//             )));
//   }
// }
// ======================================================================================
// import 'package:flutter/material.dart';

// import './question.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // connected to Stateful widget
//     // TODO: implement createState
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   // connected to MyApp
//   var questionIndex = 0;
//   void answerQuestion() {
//     setState(() {
//       questionIndex = questionIndex + 1;
//     });
//     print(questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favorite color?',
//       'What\'s your favorite animal?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('My First App')),
//         body: Column(
//           children: [
//             Question(
//               questions[questionIndex],
//             ),
//             ElevatedButton(
//               onPressed: answerQuestion,
//               child: Text('Answer 1'),
//             ),
//             ElevatedButton(
//               onPressed: () => print('Answer 2 chosen'),
//               child: Text('Answer 2'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print('Answer 3 chosen');
//               },
//               child: Text('Answer 3'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// =====================================================================================
// // Navigation and Routing in Flutter
// import "package:flutter/material.dart";

// void main() {
//   runApp(MaterialApp(title: 'Flutter Navigation', home: FirstRoute()));
// }

// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('First Route')),
//         body: Center(
//           child: ElevatedButton(
//               child: Text('Go to Second'),
//               onPressed: () {
//                 // code goes here
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => SecondRoute()));
//               }),
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Second Route'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//               child: Text('Go to First'),
//               onPressed: () {
//                 // code goes here
//                 Navigator.pop(context);
//               }),
//         ),
//       ),
//     );
//   }
// }
// ======================================================================================
// // Named Navigation Routes
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Named Route Navigation',
//     theme: ThemeData(
//       // This is the theme of your application.
//       primarySwatch: Colors.green,
//     ),
//     // Start the app with the "/" named route. In this case, the app starts
//     // on the FirstScreen widget.
//     initialRoute: '/',
//     routes: {
//       // When navigating to the "/" route, build the FirstScreen widget.
//       '/': (context) => HomeScreen(),
//       // When navigating to the "/second" route, build the SecondScreen widget.
//       '/second': (context) => SecondScreen(),
//     },
//   ));
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Click Here'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
// ======================================================================================
// Flutter forms with Validation
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appTitle = 'Flutter Form Demo';
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// class MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: const Icon(Icons.person),
//               hintText: 'Enter your full name',
//               labelText: 'Name',
//             ),
//             validator: (value) {
//               if (value != null && value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: const Icon(Icons.phone),
//               hintText: 'Enter a phone number',
//               labelText: 'Phone',
//             ),
//             keyboardType: TextInputType.phone,
//             validator: (value) {
//               if (value == null ||
//                   value.isEmpty ||
//                   !RegExp(r'^\+?1?\d{9,15}$').hasMatch(value)) {
//                 return 'Please enter a valid phone number';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               icon: const Icon(Icons.calendar_today),
//               hintText: 'Enter your date of birth',
//               labelText: 'Dob',
//             ),
//             keyboardType: TextInputType.datetime,
//             validator: (value) {
//               if (value == null ||
//                   value.isEmpty ||
//                   !RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)) {
//                 return 'Please enter a valid date (YYYY-MM-DD)';
//               }
//               return null;
//             },
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 150.0, top: 40.0),
//             child: ElevatedButton(
//               child: const Text('Submit'),
//               onPressed: () {
//                 if (_formKey.currentState != null &&
//                     _formKey.currentState!.validate()) {
//                   _formKey.currentState!.save();
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Data is in processing.')));
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// =====================================================================================
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class CartModel extends ChangeNotifier {
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addProductToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeProductFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }
}

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', price: 49.99),
    Product(name: 'Product 2', price: 79.99),
    Product(name: 'Product 3', price: 29.99),
    Product(name: 'Product 4', price: 99.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            ),
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price}'),
            trailing: IconButton(
              onPressed: () => Provider.of<CartModel>(context, listen: false)
                  .addProductToCart(product),
              icon: Icon(Icons.add_shopping_cart),
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Consumer<CartModel>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.cartItems.length,
            itemBuilder: (context, index) {
              final product = cart.cartItems[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text('\$${product.price}'),
                trailing: IconButton(
                  onPressed: () =>
                      Provider.of<CartModel>(context, listen: false)
                          .removeProductFromCart(product),
                  icon: Icon(Icons.remove_shopping_cart),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
// =====================================================================================
