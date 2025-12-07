import 'package:flutter/material.dart';
import 'package:first_project/widgets/bold_text.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle:true,
         title:  Boldtext( text: 'Dashboard',
         
         )
      ),
      body:Column(
        children: [
         const ListTile(
           title: Text('username',
           style: TextStyle(
             color: Colors.black,
             fontSize:18,
             fontWeight: FontWeight.bold,
           ),
           ),
           subtitle:Text('What you looking for?',
           style: TextStyle(
             color: Colors.black,
             fontSize:18,
             fontWeight: FontWeight.bold,
           ),
           ),
                 
         ),
             
                        
         
         GridView.count(
           crossAxisCount:4,
           children: [
             Container(
               decoration:BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(30),
                 boxShadow: [
                   BoxShadow()
                     
                 ],
               ),
             ),
           ],
         ),
          
        ],
      ),
    );
    
    
    
    }
}