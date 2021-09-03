import 'package:cat_catalog/model/cat_catalog.dart';
import 'package:cat_catalog/ui/detail_screen.dart';
import 'package:cat_catalog/ui/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body:
        Stack(
         children: [
                 Container(
                   color: HexColor("fec5bb"),
                 ),
                 Stack(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(top: 0),
                       child: Container(
                         color: HexColor("fec5bb"),
                         height: sizeHeight/6,
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Expanded(
                                 flex: 1,
                                 child:
                                 IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_sharp,color: HexColor("f8edeb"),))),
                             // ElevatedButton(onPressed: (){}, child: Icon(Icons.dashboard_sharp))),
                             Expanded(
                               flex: 3,
                               child:
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("Location",style: TextStyle(color: HexColor("f8edeb")),),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Icon(Icons.location_on,size: sizeWidth/30,color: Colors.white,),
                                       Text("Banjarmasin",style: TextStyle(fontSize: sizeWidth/30,color: Colors.white),)
                                     ],
                                   )
                                 ],
                               ),
                             ),
                             Expanded(
                                 flex: 1,
                                 child:
                                 Container(
                                   height: sizeWidth/10,
                                   width: sizeWidth/10,
                                   margin: EdgeInsets.only(
                                       top: sizeWidth / 40,
                                       left: sizeWidth / 30,
                                       right: sizeWidth/20,
                                       bottom: sizeWidth/40),
                                   decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       image: DecorationImage(
                                           image: AssetImage("images/github.png")
                                       )
                                   ),
                                 )
                             )

                           ],
                         ),
                       ),
                     ),
                     Positioned(
                       child: Container(
                         margin: EdgeInsets.only(top: sizeHeight/8),
                         decoration: BoxDecoration(
                             color: HexColor("f8edeb"),
                             borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(15),
                                 topRight: Radius.circular(15)
                             )
                         ),
                         child:
                         Padding(
                           padding: EdgeInsets.all(sizeWidth/20),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Card(
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15.0),
                                 ),
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: HexColor("F8E2CF"),
                                       borderRadius: BorderRadius.circular(15)
                                   ),
                                   child: Padding(
                                     padding: EdgeInsets.fromLTRB(sizeWidth/30, sizeHeight/50, sizeWidth/30, sizeHeight/50),
                                     child: Row(
                                       children: [
                                         Expanded(
                                           flex: 1,
                                           child: Image.asset("images/birmans.png",
                                             width: sizeWidth / 3,),
                                         ),
                                         Expanded(
                                           flex: 2,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Text("Bingung cari majikan? \n"
                                                   "Kunjungi PetShop Terdekat",style: TextStyle(color: HexColor("FFFFFF"),fontWeight: FontWeight.bold),),
                                               ElevatedButton(onPressed: (){
                                                 Navigator.push(context, MaterialPageRoute(builder: (context){
                                                   return MapScreen();
                                                 }));
                                               },
                                                   style: ElevatedButton.styleFrom(
                                                       primary: HexColor("F5C6AA")
                                                   ),
                                                   child:
                                                   Text("Klik Disini"))
                                             ],
                                           ),
                                         )
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                               SizedBox(height: sizeHeight/40,),
                               Text("Jenis Kucing",
                                 style: TextStyle(fontWeight: FontWeight.bold),),
                               Container(
                                   child: CarouselSlider(
                                     options: CarouselOptions(
                                         autoPlay : false,
                                         aspectRatio : 2.0,
                                         enlargeCenterPage : true
                                     ),
                                     items: catCatalog.map((item) => Container(
                                       child: Container(
                                         child: ClipRRect(

                                           child: Stack(
                                             children: [
                                               Positioned(
                                                 child: Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Card(
                                                     elevation: 3,
                                                     color: HexColor("ffd7ba"),
                                                     shape: RoundedRectangleBorder(
                                                       borderRadius: BorderRadius.circular(15),
                                                     ),
                                                     child: Container(
                                                       width: sizeWidth,
                                                       height: sizeHeight/1,
                                                       child:
                                                       Row(
                                                         crossAxisAlignment: CrossAxisAlignment.stretch,
                                                         children: [
                                                           Expanded(
                                                             flex: 1,
                                                             child: SizedBox(child: Container(

                                                             ),),
                                                           ),
                                                           Expanded(
                                                             flex: 1,
                                                             child:
                                                             Padding(
                                                               padding: EdgeInsets.only(bottom: 0),
                                                               child: Column(
                                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                                 children: [
                                                                   Padding(
                                                                     padding: EdgeInsets.fromLTRB(sizeWidth/50,sizeHeight/30,sizeWidth/50,sizeHeight/100),
                                                                     child: Text(item.name,maxLines: 2,
                                                                       style: TextStyle(color: HexColor("f8edeb"),
                                                                           fontWeight: FontWeight.bold,
                                                                           fontSize: sizeWidth/24),),
                                                                   ),
                                                                   Padding(
                                                                       padding: EdgeInsets.fromLTRB(sizeWidth/50,sizeHeight/100,sizeWidth/50,sizeHeight/80),
                                                                       child: ElevatedButton(onPressed: (){
                                                                         Navigator.push(context, MaterialPageRoute(builder: (context){
                                                                           return DetailScreenKucing(catCatalog: item);
                                                                         }));
                                                                       },
                                                                           style: ElevatedButton.styleFrom(
                                                                               primary: HexColor("fec89a")
                                                                           ),
                                                                           child: Text(
                                                                               "Klik Detail"
                                                                           ))
                                                                   )
                                                                 ],
                                                               ),
                                                             ),
                                                           )
                                                         ],
                                                       ),
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                               Positioned(
                                                 left: 0,
                                                 child:  Image.asset(item.imageAsset, width: 150,height: 150,),)
                                             ],
                                           ),
                                         ),
                                       ),
                                     )).toList(),
                                   )
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ],
                 )
         ],

        )
    );
  }

}

final List<Widget> cardSlider = catCatalog.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Stack(
          children: <Widget>[
            Image.asset(item.imageAsset, width: 150.0),

          ],
        )),
  ),
)).toList();
