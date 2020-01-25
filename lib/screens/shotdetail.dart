
import 'package:flutter/material.dart';
import 'package:monster/models/shot.dart';


Widget getShotDetailWidget(Shot shot,BuildContext context){
  var width=getShotImageWidthForPreview(context);
  print(width);
  // var padding=getPadding(context);
  return ListView(
    shrinkWrap: true,
    padding: EdgeInsets.all(24),
    children: <Widget>[
      Container(
            width: width,
              height: (width*3)/4,
            child: Hero(
            tag: shot.id.toString(),
            child:  
            Image.network(
                shot.images.two_x,
                fit: BoxFit.fill
                
            ),
          ),
          ),
          Align(
          alignment: Alignment.topLeft,
          child: Padding(
          padding: EdgeInsets.fromLTRB(0, 24, 0, 8),
          child: Text(shot.title,style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).indicatorColor
        ),),
        ),
        ),

        Align(
          alignment: Alignment.topLeft,
          child: Text(removeAllHtmlTags(shot.description),style: TextStyle(
          fontSize: 14,
          color: Theme.of(context).indicatorColor
        ),),
        )
    ],
  );
}


String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(
      r"<[^>]*>",
      multiLine: true,
      caseSensitive: true
    );

    return htmlText.replaceAll(exp, '');
}

double getPadding(BuildContext context){
  var maxWidth=MediaQuery.of(context).size.width;

}

double getShotImageWidthForPreview(BuildContext context){
  var maxwidth=MediaQuery.of(context).size.width;
  if(maxwidth>800){
    return 800;
  }

  if(maxwidth<=800 && maxwidth>400){
      return 400;
  }

    if(maxwidth<=400 && maxwidth>200){
      return 200;
  }

     if(maxwidth<=200 && maxwidth>100){
      return 100;
  }

  return 50;
}