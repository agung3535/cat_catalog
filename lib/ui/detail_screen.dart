import 'package:cat_catalog/model/cat_catalog.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io' show Platform;

class DetailScreenKucing extends StatelessWidget {
  final CatCatalog catCatalog;
  const DetailScreenKucing({Key? key,required this.catCatalog}) : super(key: key);

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

          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: sizeHeight/8),
                    child: Image.asset(catCatalog.imageAsset,width: sizeWidth/1,height: sizeHeight/3,)),
                Container(
                  width: sizeWidth,
                  height: sizeHeight/1.9,
                  decoration: BoxDecoration(
                      color: HexColor("f8edeb"),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: sizeWidth/30,top: sizeHeight/50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(catCatalog.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: sizeWidth/20),),
                            FavoriteButton()
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(left: sizeWidth/30,top: sizeHeight/50),
                          child: Text(
                              catCatalog.description
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child:
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                   Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        isFavorite = !isFavorite;
      });
    }, icon: Icon(
      isFavorite ? Icons.favorite : Icons.favorite_border,
    ));
  }
}

