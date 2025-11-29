// -------------------- ADD WIDGETS -------------------- //
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("FLAPP"),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple[600],
//       ),
//       body: 
// Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(flex: 1,child: Image.asset('assets/pic1.jpg')),
//           Expanded(
//             flex: 3,
//             child: Container(
//               color: Colors.cyan,
//               padding: EdgeInsets.all(30),
//               child: Text('1'),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.pinkAccent,
//               padding: EdgeInsets.all(30),
//               child: Text('2'),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               color: Colors.amber,
//               padding: EdgeInsets.all(30),
//               child: Text('3'),
//             ),
//           ),
//         ],
//       ),
// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Row(
//             children: [
//               Text('row one'),
//               Text('row two')
//             ],
//           ),
//           Container(
//             color: Colors.cyan,
//             padding: EdgeInsets.all(20),
//             child: Text('one'),
//           ),
//           Container(
//             color: Colors.pinkAccent,
//             padding: EdgeInsets.all(30),
//             child: Text('in two'),
//           ),
//           Container(
//             color: Colors.amber,
//             padding: EdgeInsets.all(40),
//             child: Text('in three'),
//           ),
//         ],
//       ),
//       // Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //   crossAxisAlignment: CrossAxisAlignment.center,
//       //   children: [
//       //     Text('hello world'),
//       //     TextButton(onPressed: ()=>{}, child: Text('click me')),
//       //     Container(
//       //       color: Colors.cyan,
//       //       padding: EdgeInsets.all(30),
//       //       child: Text('in container'),
//       //     )
//       //   ],
//       // ),
//       // Padding(
//       //   padding: EdgeInsets.all(30),
//       //   child: Text('hello')
//       //   ),
//       // Container(
//       //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
//       //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//       //   color: Colors.grey[400],
//       //   child: Text('hello')
//       //   ),
//       // Center(
//       // child: IconButton(
//       //   onPressed: () => {},
//       //   icon: Icon(Icons.mail),
//       //   color: Colors.amber,
//       // ),
//       // ElevatedButton.icon(
//       //   onPressed: () => {},
//       //   label: Text("mail me"),
//       //   icon: Icon(Icons.mail),
//       // ),
//       // OutlinedButton(onPressed: () => {}, child: Text("data")),
//       // TextButton(onPressed: () => {}, child: Text("data")),
//       // ElevatedButton(onPressed: () {}, child: Text('Click Me'),),
//       // Icon(Icons.airport_shuttle, color: Colors.lightBlue, size: 50),
//       // Image.asset('assets/pic1.jpg'),
//       // Text(
//       //   "My ninjas",
//       //   style: TextStyle(
//       //     fontSize: 20,
//       //     fontWeight: FontWeight.bold,
//       //     letterSpacing: 2,
//       //     color: Colors.grey[600],
//       //     fontFamily: 'IndieFlower',
//       //   ),
//       // ),
//       // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {},
//         backgroundColor: Colors.deepPurple[500],
//         foregroundColor: Colors.white,
//         child: Text("click"),
//       ),
//     );
//   }
// }



// -------------------- SET STATE -------------------- //
// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int ninjaLevel = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text("FLAPP", style: TextStyle(color: Colors.white)),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/ninja1.jpg'),
//                 radius: 40,
//                 // child: ,
//               ),
//             ),
//             Divider(height: 60, color: Colors.grey[800]),
//             Text(
//               'NAME',
//               style: TextStyle(color: Colors.grey, letterSpacing: 1),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Chun-Li',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 1,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 30),
//             Text(
//               'CURRENT NINJA LEVEL',
//               style: TextStyle(color: Colors.grey, letterSpacing: 1),
//             ),
//             SizedBox(height: 10),
//             Text(
//               '$ninjaLevel',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 1,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 30),
//             Row(
//               children: [
//                 Icon(Icons.email, color: Colors.grey[400]),
//                 SizedBox(width: 10),
//                 Text(
//                   'chun@ninjaacademy.com',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     letterSpacing: 1,
//                     fontSize: 18,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {
//           setState(() {
//             ninjaLevel++;
//           }),
//         },
//         backgroundColor: Colors.deepPurple[500],
//         foregroundColor: Colors.white,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }



// -------------------- QUOTES:RETURN LISTS -------------------- //
// import 'quote.dart';
// import 'quote_card.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int ninjaLevel = 0;
//   List quotes = [
//     Quote('Toyota', 'Japan'),
//     Quote('Renault', 'French'),
//     Quote('Chevrolet', 'America'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text("FLAPP", style: TextStyle(color: Colors.white)),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0,
//       ),
//       body: Column(
//         children: quotes
//             .map(
//               (quote) => QuoteCard(
//                 quote: quote,
//                 delete: () {
//                   setState(() {
//                     quotes.remove(quote);
//                   });
//                 },
//               ),
//             )
//             .toList(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {
//           setState(() {
//             ninjaLevel++;
//           }),
//         },
//         backgroundColor: Colors.deepPurple[500],
//         foregroundColor: Colors.white,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// -------------------- WORLD CLOCK : -------------------- //