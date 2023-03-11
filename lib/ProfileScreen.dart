import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  return(runApp(profile()));
}
class profile extends StatelessWidget {
  profile({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: 
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 61,
                  child:
                  CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/64/21/11/240_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg')),
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Alex Marshall",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 5,
                ),
                Text("@alex_marshall",style: TextStyle(color: Colors.grey),),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.indigo),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edit", style: TextStyle(
                            color: Colors.white, fontSize: 20))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Divider(
                  color: Colors.black12,
                ),
                Wrap(
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 15.0, // gap between lines
                  children: <Widget>[
                    TextButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white),
                        child: Row(
                          children: [
                            Icon(Icons.settings,color: Colors.black,),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Setting",style: TextStyle(color: Colors.black,fontSize: 18,),)
                          ],
                        ),
                        onPressed: () => {

                        }
                    ),
                    TextButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,),
                        child: Row(
                          children: [
                            Icon(Icons.person,color: Colors.black),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Friend",style: TextStyle(color: Colors.black,fontSize: 18),)
                          ],
                        ),
                        onPressed: () => {

                        }
                    ),
                    TextButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white),
                        child: Row(
                          children: [
                            Icon(Icons.person,color: Colors.black),
                            SizedBox(
                              width: 20,
                            ),
                            Text("New Group",style: TextStyle(color: Colors.black,fontSize: 18),)
                          ],
                        ),
                        onPressed: () => {

                        }
                    ),

                  ],
                ),
              ],),

          ),
        ),

      ),
    );
  }
}
