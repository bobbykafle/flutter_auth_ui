
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(color:Colors.deepPurple),
    Container(color:Colors.green),
    Container(color:Colors.purple),
    Container(color:Colors.teal)
  ];

}


 class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final NavigationController controller = Get.put(NavigationController());

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
       drawer: Drawer(), // for threeline 


       bottomNavigationBar: // for button navigation reacct automatically 
         Obx(
           () => NavigationBar(
            height: 80,
           selectedIndex: controller.selectedIndex.value,
           onDestinationSelected:(index) => controller.selectedIndex.value = index,
                            
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home,), 
                label: 'Home',
                ),
           
              NavigationDestination(
                icon: Icon(Iconsax.shop,),
                 label: 'Store',),
           
              NavigationDestination(
                icon: Icon(Iconsax.heart,), 
                label: 'Wishlist',
                ),
           
              NavigationDestination(
                icon: Icon(Iconsax.user,),
                 label: 'Profile',),
           
            ]),
         ),
         body:Obx(()=> controller.screens [controller.selectedIndex.value]),
       );
     

    
  }
}

