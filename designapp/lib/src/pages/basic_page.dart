import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  
  final titleStyle    = TextStyle(fontSize:20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize:18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _createImage(),
              _createTitle(),
              _createActions(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText()
            ],
          ),
      ),
    );
  }

  Widget _createImage(){
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage('https://i.pinimg.com/originals/6e/4c/13/6e4c1341ddabe52b47997464b9120a6a.png'),
          height: 300.0,
          fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Asgard', style: titleStyle),
                    SizedBox( height: 8.0),
                    Text ("Kingdome of Asgard", style: subtitleStyle),
                  ]
              ),
            ),
            Icon(
                Icons.star,
                color: Colors.red,
                size: 30.0
            ),
            Text(
              '41',
              style: TextStyle(
                  fontSize: 20.0
              ),)

          ],
        ),
      ),
    );
  }

  Widget _createActions(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _singleAction(Icons.call, 'CALL'),
        _singleAction(Icons.near_me, 'ROUTE'),
        _singleAction(Icons.share, 'SHARE'),

      ],
    );
  }

  Widget _singleAction(IconData icon, String text){
      return  Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0,),
          SizedBox(height: 7.0),
          Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
        ],
      );
  }

  Widget _createText(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0) ,
        child: Text (
          "In Norse cosmology, Asgard (from Old Norse Ásgarðr, 'enclosure of the Æsir') is a location associated with the gods. Asgard is attested in a variety of sources, including the Poetic Edda, compiled in the 13th century from earlier traditional sources, in the Prose Edda (written in the 13th century by Snorri Sturluson), and in euhemerized form in Heimskringla (also written in the 13th century by Snorri Sturluson). The Prose Edda describes Valhalla, the god Odin's afterlife hall for a portion of the battlefield slain, as located in Asgard. While the Nine Worlds are nowhere detailed in the Old Norse corpus, some scholars have proposed that Asgard may have been considered among them.",
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }
}

