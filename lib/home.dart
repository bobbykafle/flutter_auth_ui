import 'package:first_project/widgets/bold_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width; //screen width  responsive 
     return  Scaffold(
        
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          
          elevation: 0,
          title: 
                Boldtext(
                  text: "what your'e looking to eat today?",
                  size: 13,
                  ),
          
           actions:  [
             IconButton(
              onPressed: (){},
               icon: Icon(
                Icons.shopping_cart,
                ),
                ),
          
             IconButton(
              onPressed: (){},
               icon: Icon(
                Icons.notifications,
                ),
                ),    
           ]
           
        ),
       
         body: SafeArea(
          
          child: SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 0),
              child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),

                  Container(
                     width: screenWidth*0.9,
                      height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color:Colors.black26, ),
                      borderRadius: BorderRadius.circular(25),
                      
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "search you're foods?",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                      
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                   ),
                  Row(
                    children: [
                      Boldtext(text: 'Categories',
                      size: 15,),
              
                      Spacer(),
              
                     InkWell(
                      onTap: () {
                        print("B");
                      },
                       child: Boldtext(text: 'View all',
                       size: 13,),
                     ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                     
                    ],
                  )
              
              
                  
              ],
                         ),
            )
          ),
          ),     
       
        
      
     );
  }
}