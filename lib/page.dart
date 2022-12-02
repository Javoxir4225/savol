import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<bool> listIcon = [true, true, true, true, true];

  int selectedItems = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 24),
        alignment: Alignment.bottomCenter,
        child: AnimatedButton(
          text: "Save",
          color: const Color.fromARGB(255, 4, 1, 154),
          width: 330,
          pressEvent: () {
            AwesomeDialog(
              context: context,
              headerAnimationLoop: false,
              dialogType: DialogType.noHeader,
              title: 'Оставьте отзыв клиенту',
              onDismissCallback: (type) {
                setState(() {});
              },
              body: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) => Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                        
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 28,
                        ),
                      ),
                    ),
                    const Text(
                      "Оставьте отзыв клиенту",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          5,
                          (index) => _icon(
                            index,
                            selectedItems >= index ? true : false,
                            param: () {
                              setState(() {
                                // listIcon[index] = !listIcon[index];
                                selectedItems = index;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: TextFormField(
                        // autofocus: true,
                        // keyboardType: TextInputType.multiline,
                        minLines: 6,
                        maxLines: null,
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: "typing....",
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'Комментария',
                            labelStyle: const TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              btnOkOnPress: () {
                debugPrint('OnClcik');
              },
              btnOkColor: const Color.fromARGB(255, 4, 1, 154),
              btnOkText: "Сохранить",
              barrierColor: Colors.black54,
              bodyHeaderDistance: 22,
            ).show();
          },
        ),
      ),
    );
  }

  _icon(int index, bool slect, {VoidCallback? param}) {
    // setState(() {});
    return IconButton(
      onPressed: param,
      icon: Icon(
        Icons.star_rate_rounded,
        size: 44,
        color: !slect ? Colors.grey : const Color.fromARGB(255, 253, 177, 53),
      ),
    );
  }

  // void show() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         content: Container(
  //           width: double.infinity,
  //           height: 350,
  //           child: Column(
  //             children: [
  //               Align(
  //                 alignment: Alignment.topRight,
  //                 child: GestureDetector(
  //                   onTap: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: const Icon(
  //                     Icons.close,
  //                     size: 28,
  //                   ),
  //                 ),
  //               ),
  //               const Text(
  //                 "Оставьте отзыв клиенту",
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 0, left: 0),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: List.generate(
  //                     5,
  //                     (index) => _icon(
  //                       index,
  //                       selectedItems >= index ? true : false,
  //                       param: () {
  //                         setState(() {
  //                           // listIcon[index] = !listIcon[index];
  //                           selectedItems = index;
  //                         });
  //                       },
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 12),
  //               Padding(
  //                 padding: const EdgeInsets.only(right: 10, left: 10),
  //                 child: TextFormField(
  //                   // autofocus: true,
  //                   // keyboardType: TextInputType.multiline,
  //                   minLines: 6,
  //                   maxLines: null,
  //                   decoration: InputDecoration(
  //                       alignLabelWithHint: true,
  //                       focusedBorder: OutlineInputBorder(
  //                         borderSide: const BorderSide(color: Colors.grey),
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                       border: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(12),
  //                       ),
  //                       labelText: 'Комментария',
  //                       labelStyle: const TextStyle(color: Colors.grey)),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         actions: [ElevatedButton(onPressed:() {

  //         },   child: Text("save"),),],
  //       );
  //     },
  //   );
  // }
}
