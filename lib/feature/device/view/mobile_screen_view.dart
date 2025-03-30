import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sumanry/util/dimensions.dart';
import 'package:sumanry/util/style.dart';

class MobileScreenView extends StatelessWidget {
  const MobileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

           Container(
            // color: Colors.black54,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,

               children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  // SizedBox(height: 80,),
                   Text("Hey ",style: textSemiBold.copyWith(fontSize: 24,color: Colors.orange),),
                   Text("I'm Suman Roy",style: textSemiBold.copyWith(fontSize: 24),),
                   Text("Mobile Apps Developer",style: textSemiBold.copyWith(fontSize: 24,color: Colors.cyan),),
                 ],
               ),
              SizedBox(width: 20,),
              Container(
                height: 100,

                 // color: Colors.cyan,
                  child: Expanded(child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image(image: AssetImage("assets/images/me.jpg",),height: 100,))))
             ],),
           ),


            Text("About",style: textSemiBold.copyWith(fontSize: 24),),
            Text("""Willing to build up my career in the development sector where I can make meaningful
            contributions continuously with security, honesty and dedication. With my Challenging
            opportunity, I will try to help the organization to achieve its Mission & Vision""",
              textAlign: TextAlign.justify,
              style: textSemiBold.copyWith(fontSize: 12,),),
            Text("Education",style: textSemiBold.copyWith(fontSize: 18),),
            Text("Skills",style: textSemiBold.copyWith(fontSize: 18),),
            Text("Project",style: textSemiBold.copyWith(fontSize: 18),),
            Text("Experience",style: textSemiBold.copyWith(fontSize: 18),),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address",style: textSemiBold.copyWith(fontSize: 18),),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Present Address"),
                        Text("Thakurgaon Bangladesh"),
                      ],
                    ),
                    SizedBox(width:60,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Permanent Address"),
                        Text("Thakurgaon\nBangladesh"),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}



