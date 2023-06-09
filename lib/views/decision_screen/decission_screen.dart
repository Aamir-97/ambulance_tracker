import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:ambulance_tracker/controller/auth_controller.dart';
// import 'package:ambulance_tracker/views/driver/car_registration/car_registration_template.dart';
// import 'package:ambulance_tracker/views/login_screen.dart';

 import '../../controller/auth_controller.dart';
import '../../widgets/green_intro_widget.dart';
import '../../widgets/my_button.dart';
import '../driver/profile_setup.dart';
import '../login_screen.dart';

class DecisionScreen extends StatelessWidget {
    DecisionScreen({Key? key}) : super(key: key);


    AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            greenIntroWidget(),

            const SizedBox(height: 50,),

            decisionButton(
              'assets/driver.png',
              'Login As Driver',
                (){
                authController.isLoginAsDriver = true;
                  Get.to(()=> LoginScreen());
                },
              Get.width*0.8
            ),

            const SizedBox(height: 20,),
            decisionButton(
                'assets/customer.png',
                'Login As User',
                    (){
                      authController.isLoginAsDriver = false;
                   Get.to(()=> LoginScreen());



                    },
                Get.width*0.8
            ),
          ],
        ),
      ),
    );
  }
}
