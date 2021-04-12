import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_vmo_v3/models/contrato_model.dart';
import 'package:flutter_vmo_v3/styles/custom_styles.dart';
import 'package:intl/intl.dart';

class NicSliderWidget extends StatefulWidget {
     
  @override
  _NicSliderWidgetState createState() => _NicSliderWidgetState();
}

class _NicSliderWidgetState extends State<NicSliderWidget> {

  int _current = 0;

  CustomStyles cStyles = new CustomStyles();

  final addCommas = new NumberFormat("#,##0.00", "en_US");

  //final List<dynamic> items = <dynamic>[];

  List<Contrato> items = [];
  
  @override
  Widget build(BuildContext context) {
    items.clear();
    items.add(new Contrato(1, '1111111', 'Andres Frias', true, '14/06/2021', 4005.51));
    items.add(new Contrato(2, '2222222', 'Francis Oller', false, '14/06/2021', 3684.00));
    items.add(new Contrato(3, '3333333', 'Andres Frias', false, '14/06/2021', 553.99));
    items.add(new Contrato(3, '4444444', 'Andres Frias', true, '14/06/2021', 2542.62));
    
    // for (var i = 0; i < 4; i++) {
    //   items.add(i);
    // }
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 160.0,
            aspectRatio: 16/9,
            viewportFraction: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }
          ),
          items: items.map((contrato) {
            return Builder(
              builder: (BuildContext context){
                return _slide(contrato);
              },
            );
          }).toList(),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map((dot) {
            int index = items.indexOf(dot);
            return Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                border: cStyles.itemStyle,
                shape: BoxShape.circle,
                color: _current == index ? cStyles.secondaryColor : Color.fromRGBO(0, 0, 0, 0.4)
              ),
            );
          }).toList()
        )
      ],
    );
  }

  Widget _slide(Contrato contrato) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 8.0),
        //margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
        decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(4, 3)
            )
          ]
        ),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Icon(Icons.lightbulb_outline, color: contrato.estado ? cStyles.primaryColor : Colors.red, size: 120,)
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 4.0),
                                child: Text("NIC ", style: TextStyle(color: cStyles.primaryColor, fontSize: 14.0))
                              ),
                              Text(contrato.nic, style: TextStyle(color: cStyles.primaryColor, fontSize: 22.0)),
                            ],
                          ),
                        ),
                        IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.edit, color: cStyles.primaryColor), 
                          onPressed: () {}
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 4.0),
                        child: Text("\$ ", style: TextStyle(color: cStyles.primaryColor, fontSize: 20.0))
                      ),
                      Text("${addCommas.format(contrato.montoTotal)}", style: TextStyle(color: cStyles.primaryColor, fontSize: 34.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10),
                  
                  Container(
                    child: Align(
                      alignment: Alignment(0.9, -0.1),
                      child: Text("Manténgase al día", style: TextStyle(color: cStyles.primaryColor, fontSize: 12.0, fontWeight: FontWeight.bold))
                    )
                  ),
                  RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      text: "Pague antes del ", 
                      style: TextStyle(color: cStyles.primaryColor, fontSize: 12.0, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: contrato.fechaVencimiento,
                          style: TextStyle(decoration: TextDecoration.underline)
                        )
                      ]
                    )
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
