
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class homeScreen extends StatefulWidget {

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is app bar"),

      ),

      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("GetX toturial"),
              subtitle: Text("here we will create new things"),
              onTap: (){
                Get.defaultDialog(
                  title: "Delete",
                  middleText: "are you sure you want to delete ",
                  confirm: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Yes")),
                    cancel: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("No"))

                );
              }
            )
          ),
          Card(
            child: ListTile(
              title: Text("GetX toturial2"),
              subtitle: Text("here we will create new things2"),
              onTap: (){
                
                    Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(120))
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text("light mode"),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text("dark mode"),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            )
                          ],
                        ),
                      )
                  
                );
              },
            )

          ),


        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar("Taybain", "heloo kaha hoo",
          snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: Text("Snack"),
      )


    );
  }
}


