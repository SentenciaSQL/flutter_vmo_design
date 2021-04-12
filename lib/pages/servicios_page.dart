import 'package:flutter/material.dart';
import 'package:flutter_vmo_v3/styles/custom_styles.dart';
import 'package:flutter_vmo_v3/widgets/app_bar_custom_widget.dart';
import 'package:flutter_vmo_v3/widgets/custom_bottom_navigatio_bar_widget.dart';
import 'package:flutter_vmo_v3/widgets/custom_icon_widget.dart';
import 'package:flutter_vmo_v3/widgets/menu_widget.dart';
import 'package:flutter_vmo_v3/widgets/nic_slider_widget.dart';
import 'package:gradients/gradients.dart';
import 'package:intl/intl.dart';

class ServiciosPage extends StatelessWidget {

  static final routeName = 'servicios';

  final addCommas = new NumberFormat("#,##0.00", "en_US");

  CustomStyles cStyles = new CustomStyles();

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarCustomWidget('Tus Servicios', _scaffoldKey),
      drawer: WidgetMenu(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradientPainter(
              colors: cStyles.colors
            )
          ),
          child: Column(
            children: [
              NicSliderWidget(),
              _data(),
              _facturas(),
              _pagos()
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBarWidget(),
    );
  }

  Widget _data() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: cStyles.headerBoder
          ),
          child: Row(
            children: [
              Expanded(
                child: Text("Datos Generales", style: cStyles.headerStyle),
              ),
              IconButton(
                icon: CustomIconWidget(Icons.delete ,30, cStyles.secondaryColor),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.settings, size: 30, color: cStyles.secondaryColor),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          alignment: Alignment.centerLeft,
          decoration: cStyles.boxDataStyle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Contrato: 1234567", style: cStyles.boxDataTextStyle),
              SizedBox(height: 5),
              Text("Titular: Francis Guzmán Oller", style: cStyles.boxDataTextStyle),
              SizedBox(height: 5),
              Text("Calle Bonaire 32, Ens. Ozama", style: cStyles.boxDataTextStyle),
              SizedBox(height: 5),
              Text("Santo Domingo Este, Rep. Dom.", style: cStyles.boxDataTextStyle),
            ],
          ),
        )
      ],
    );
  }

  Widget _facturas() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: cStyles.headerBoder
          ),
          child: Row(
            children: [
              Expanded(
                child: Text("Facturas", style: cStyles.headerStyle),
              ),
              IconButton(
                icon: CustomIconWidget(Icons.bar_chart_outlined ,35, cStyles.secondaryColor),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios_rounded, size: 30, color: cStyles.secondaryColor),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          alignment: Alignment.centerLeft,
          decoration: cStyles.boxDataStyle,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text("0 Vencidas.....", style: cStyles.boxDataTextStyle),
                  ),
                  Text("\$ ${addCommas.format(0)}", style: cStyles.boxDataTextStyle)
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: Text("1 Por Vencer.....", style: cStyles.boxDataTextStyle),
                  ),
                  Text("\$ ${addCommas.format(3721.69)}", style: cStyles.boxDataTextStyle)
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: Text("Balance Total.......", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                  Text("\$ ${addCommas.format(3721.69)}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22))
                ],
              ),
              SizedBox(height: 5),
              Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: Text("Pagar Ahora", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    onPrimary: cStyles.primaryColor,
                    primary: cStyles.secondaryColor,
                    minimumSize: Size(88, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        )
      ],
    );
  }

  Widget _pagos() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: cStyles.headerBoder
          ),
          child: Row(
            children: [
              Expanded(
                child: Text("Pagos", style: cStyles.headerStyle),
              ),
              IconButton(
                icon: CustomIconWidget(Icons.bar_chart_outlined ,35, cStyles.secondaryColor),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios_rounded, size: 30, color: cStyles.secondaryColor),
                onPressed: () {},
              ),
            ],
          ),
        ),
       Container(
          margin: EdgeInsets.only(top: 5.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          alignment: Alignment.centerLeft,
          decoration: cStyles.boxDataStyle,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text("Último Monto.....", style: cStyles.boxDataTextStyle),
                  ),
                  Text("\$ ${addCommas.format(2834.22)}", style: cStyles.boxDataTextStyle)
                ],
              )
            ],
          ),
       )
      ],
    );
  }
}
