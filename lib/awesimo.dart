

// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Awesome Dialog Example'),
//       ),
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
               
          
//                 AnimatedButton(
//                   text: 'No Header Dialog',
//                   color: Colors.cyan,
//                   pressEvent: () {
//                     AwesomeDialog(
//                       context: context,
//                       headerAnimationLoop: false,
//                       dialogType: DialogType.noHeader,
//                       title: 'No Header',
//                       desc:
//                           'Dialog description here..................................................',
//                       btnOkOnPress: () {
//                         debugPrint('OnClcik');
//                       },
//                       btnOkIcon: Icons.check_circle,
//                     ).show();
//                   },
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 AnimatedButton(
//                   text: 'Custom Body Dialog',
//                   color: Colors.blueGrey,
//                   pressEvent: () {
//                     AwesomeDialog(
//                       context: context,
//                       animType: AnimType.scale,
//                       dialogType: DialogType.info,
//                       body: const Center(
//                         child: Text(
//                           'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
//                           style: TextStyle(fontStyle: FontStyle.italic),
//                         ),
//                       ),
//                       title: 'This is Ignored',
//                       desc: 'This is also Ignored',
//                     ).show();
//                   },
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 AnimatedButton(
//                   text: 'Auto Hide Dialog',
//                   color: Colors.purple,
//                   pressEvent: () {
//                     AwesomeDialog(
//                       context: context,
//                       dialogType: DialogType.infoReverse,
//                       animType: AnimType.scale,
//                       title: 'Auto Hide Dialog',
//                       desc: 'AutoHide after 2 seconds',
//                       autoHide: const Duration(seconds: 2),
//                       onDismissCallback: (type) {
//                         debugPrint('Dialog Dissmiss from callback $type');
//                       },
//                     ).show();
//                   },
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 AnimatedButton(
//                   text: 'Testing Dialog',
//                   color: Colors.orange,
//                   pressEvent: () {
//                     AwesomeDialog(
//                       context: context,
//                       keyboardAware: true,
//                       dismissOnBackKeyPress: false,
//                       dialogType: DialogType.warning,
//                       animType: AnimType.bottomSlide,
//                       btnCancelText: "Cancel Order",
//                       btnOkText: "Yes, I will pay",
//                       title: 'Continue to pay?',
//                       // padding: const EdgeInsets.all(5.0),
//                       desc:
//                           'Please confirm that you will pay 3000 INR within 30 mins. Creating orders without paying will create penalty charges, and your account may be disabled.',
//                       btnCancelOnPress: () {},
//                       btnOkOnPress: () {},
//                     ).show();
//                   },
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 AnimatedButton(
//                   text: 'Body with Input',
//                   color: Colors.blueGrey,
//                   pressEvent: () {
//                     late AwesomeDialog dialog;
//                     dialog = AwesomeDialog(
//                       context: context,
//                       animType: AnimType.scale,
//                       dialogType: DialogType.info,
//                       keyboardAware: true,
//                       body: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: <Widget>[
//                             Text(
//                               'Form Data',
//                               style: Theme.of(context).textTheme.headline6,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Material(
//                               elevation: 0,
//                               color: Colors.blueGrey.withAlpha(40),
//                               child: TextFormField(
//                                 autofocus: true,
//                                 minLines: 1,
//                                 decoration: const InputDecoration(
//                                   border: InputBorder.none,
//                                   labelText: 'Title',
//                                   prefixIcon: Icon(Icons.text_fields),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Material(
//                               elevation: 0,
//                               color: Colors.blueGrey.withAlpha(40),
//                               child: TextFormField(
//                                 autofocus: true,
//                                 keyboardType: TextInputType.multiline,
//                                 minLines: 2,
//                                 maxLines: null,
//                                 decoration: const InputDecoration(
//                                   border: InputBorder.none,
//                                   labelText: 'Description',
//                                   prefixIcon: Icon(Icons.text_fields),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             AnimatedButton(
//                               isFixedHeight: false,
//                               text: 'Close',
//                               pressEvent: () {
//                                 dialog.dismiss();
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                     )..show();
//                   },
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 AnimatedButton(
//                   text: 'Passing Data Back from Dialog',
//                   pressEvent: () async {
//                     final dismissMode = await AwesomeDialog(
//                       context: context,
//                       dialogType: DialogType.noHeader,
//                       buttonsBorderRadius: const BorderRadius.all(
//                         Radius.circular(2),
//                       ),
//                       animType: AnimType.rightSlide,
//                       title: 'Passing Data Back',
//                       titleTextStyle: const TextStyle(
//                         fontSize: 32,
//                         fontStyle: FontStyle.italic,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       desc: 'Dialog description here...',
//                       showCloseIcon: true,
//                       btnCancelOnPress: () {},
//                       btnOkOnPress: () {},
//                       autoDismiss: false,
//                       onDismissCallback: (type) {
//                         Navigator.of(context).pop(type);
//                       },
//                       barrierColor: Colors.purple[900]?.withOpacity(0.54),
//                     ).show();

//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text('Dismissed by $dismissMode'),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }