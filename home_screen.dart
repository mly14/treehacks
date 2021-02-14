import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:at_commons/at_commons.dart';
import 'package:newserverdemo/services/server_demo_service.dart';
import 'login_screen.dart';
import 'package:at_demo_data/at_demo_data.dart' as at_demo_data;
import 'package:modal_progress_hud/modal_progress_hud.dart';


import 'package:at_demo_data/at_demo_data.dart' as at_demo_data;

class HomeScreen extends StatefulWidget {
  static final String id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class Network extends StatelessWidget {
  bool showSpinner = false;
  ServerDemoService _serverDemoService = ServerDemoService.getInstance();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Your Network'),
      ),
      body: Center(
        child: DropdownButton<String>(
         hint:  Text('\tFind a Friend'),
          icon: Icon(
            Icons.keyboard_arrow_down,
        ),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87
          ),
          underline: Container(
            height: 2,
            color: Colors.deepOrange,
          ),
          onChanged: (String newValue) {
            //setState(() {
            {
              atSign = newValue;
            };
          },
          value: atSign != null ? atSign : null,
          items: at_demo_data.allAtsigns
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      );

  }
}

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
      ),
      body: SingleChildScrollView(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //Alerts
        Flexible(
            fit: FlexFit.loose,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(IconData(57366, fontFamily: 'MaterialIcons'), size: 70),
                    title: Text('Ron has tested positive for COVID-19.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ),
                    ),
                    subtitle: ListView(
                      shrinkWrap: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ),
          ),
        Flexible(
          fit: FlexFit.loose,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(IconData(57366, fontFamily: 'MaterialIcons'), size: 70),
                  title: Text('Amy has tested positive for COVID-19.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                  subtitle: ListView(
                    shrinkWrap: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(IconData(57366, fontFamily: 'MaterialIcons'), size: 70),
                  title: Text('Zach has tested positive for COVID-19.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                  subtitle: ListView(
                    shrinkWrap: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ),
        ),

      ],
    ),
    ),
    );
  }
}



class _HomeScreenState extends State<HomeScreen> {
  // TODO: Instantiate variables
  //update
  String _key;
  String _value;
  // lookup
  TextEditingController _lookupTextFieldController = TextEditingController();
  String _lookupKey;
  String _lookupValue = '';
  // scan
  List<String> _scanItems = List<String>();
  // service
  ServerDemoService _atClientService = ServerDemoService.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COVID Tracer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Alerts
            Flexible(
              fit: FlexFit.loose,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(IconData(57366, fontFamily: 'MaterialIcons'), size: 70),
                      title: Text('Alerts',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),
                      ),
                      subtitle: ListView(
                        shrinkWrap: true,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: FlatButton(
                        child: Text('Go to Alerts'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        // TODO: Complete the onPressed function
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Alert()),
                          );
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //My Network
            Flexible(
              fit: FlexFit.loose,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(IconData(0xea44, fontFamily: 'MaterialIcons'), size: 70),
                      title: Text('My Network',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(20),
                      child: FlatButton(
                        child: Text('Go to Network'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        // TODO: Complete the onPressed function
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Network()),
                          );
                        }
                      ),

                    ),
                  ],
                ),
              ),
            ),
            //Notify My Network
            Flexible(
              fit: FlexFit.loose,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(IconData(0xe634, fontFamily: 'MaterialIcons'), size: 70),
                      title: Text('Notify My Network',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Share COVID 19 Diagonsis",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // TODO: assign a String to the Text widget
                          Text('$_lookupValue',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: FlatButton(
                        child: Text('Notify My Network'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        // TODO: complete the onPressed function
                        onPressed: _lookup,
                      ),
                    ),
                  ],
                ),
              ),
            ),



          ],

        ),
      ),
    );
  }

  // TODO: add the _scan, _update, and _lookup methods
  /// Create instance of an AtKey and pass that
  /// into the put() method with the corresponding
  /// _value string.
  _update() async {
    if (_key != null && _value != null) {
      AtKey pair = AtKey();
      pair.key = _key;
      pair.sharedWith = atSign;
      await _atClientService.put(pair, _value);
    }
  }

  /// getKeys() corresponding to the keys shared by [atSign].
  /// Strip any meta data away from the retrieves keys. Store
  /// the keys into [_scanItems].
  _scan() async {
    List<AtKey> response = await _atClientService.getAtKeys(sharedBy: atSign);
    if (response.length > 0) {
      List<String> scanList =
      response.map((atKey) => atKey.key).toList();
      setState(() {
        _scanItems = scanList;
      });
    }
  }

  /// Create instance of an AtKey and call get() on it.
  _lookup() async {
    if (_lookupKey != null) {
      AtKey lookup = AtKey();
      lookup.key = _lookupKey;
      lookup.sharedWith = atSign;
      String response = await _atClientService.get(lookup);
      if (response != null) {
        setState(() {
          _lookupValue = response;
        });
      }
    }
  }
}