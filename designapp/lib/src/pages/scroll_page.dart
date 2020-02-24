import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(),
        ],
      ),

    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _texts(),
      ],
    );
  }
  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108,192,2018, 1.0)
    );
  }
  Widget _page2() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _button(),
      ],
    );
  }
  Widget _backgroundImage(){
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover
        ),
    );
  }

  Widget _texts(){
    final textStyle = TextStyle(color: Colors.white, fontSize: 56.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('47° F', style: textStyle),
          Text('Wednesday', style: textStyle),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _button(){
    return Center(

      child: RaisedButton(

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0 ,vertical: 17.0),
            child: Text (' W E L C O M E ', style: TextStyle(fontSize: 20.0)),
          ),
          color: Colors.blueAccent,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: (){}
          )
    );
  }
}


