import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class Body extends StatelessWidget {
  var estilo = TextStyle(color: Colors.white, fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/a/a7/EAOrigin_Logo.png",
            height: 64.0,
          ),
        ),
        Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "¿Cuanto costaria un viaje a Europa? Elige las ciudades y el auto que te gustaria usar y obtiene un precio personalizado",
                    style: estilo),
                TextFormField(
                    autocorrect: false,
                    //focusNode: _focusNode,
                    style: TextStyle(color: Colors.white),
                    decoration: new InputDecoration(
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      contentPadding: EdgeInsets.only(
                          bottom: 10.0, left: 10.0, right: 10.0),
                      labelText: "cuantos viajarán?",
                    )),
                new MaterialButton(
                    color: Colors.deepOrangeAccent,
                    onPressed: () async {
                      final List<DateTime> picked =
                          await DateRagePicker.showDatePicker(
                              context: context,
                              initialFirstDate: new DateTime.now(),
                              initialLastDate: (new DateTime.now())
                                  .add(new Duration(days: 7)),
                              firstDate: new DateTime(2015),
                              lastDate: new DateTime(2020));
                      if (picked != null && picked.length == 2) {
                        print(picked);
                      }
                    },
                    child: new Text("Pick date range")),
              ],
            ))
      ],
    );
  }
}
