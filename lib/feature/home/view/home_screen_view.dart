import 'package:flutter/material.dart';
import 'package:sumanry/common/custom_tabar.dart';
import 'package:sumanry/feature/device/view/mobile_screen_view.dart';
import 'package:sumanry/util/responsive_helper.dart';

class HomeScreenView extends StatefulWidget {
   HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  List category =["About","Skills","Project","Contract"];
  int selectedIndex = 0;
  setSelectedIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Suman Roy"),),
      body: ResponsiveWidget(mobile:MobileScreenView(), tab: Container(
        height:50,width: double.infinity,
        child:ListView.builder(itemCount: category.length,
            scrollDirection: Axis.horizontal,itemBuilder: (_,index){
              return FundRisingTypeItem( index: index,selectedIndex: selectedIndex,
                  tabNameWidget:Text(category[index],style:TextStyle(color:  index ==selectedIndex?Color(0xFFB71C1C):Colors.black,fontSize: 14,fontWeight: FontWeight.w700)) ,

                  onTap: (){setState(() {selectedIndex = index;});}
              );
            }),
      ), desktop:
      Container(
        height: 120,width: double.infinity,
        child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (_,index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Text("${category[index]}"),
              );
            }),
      ),),
    );
  }
}
