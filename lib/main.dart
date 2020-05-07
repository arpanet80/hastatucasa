import 'package:flutter/material.dart';
import 'package:hastatucasa/src/pages/detalle_empresa_page.dart';
import 'package:hastatucasa/src/pages/home_page.dart';

void main() => runApp(HastaTuCasa());

class HastaTuCasa extends StatelessWidget {
    @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Hasta tu Casa',
      initialRoute: '/',
      routes: {
        '/'               : (BuildContext context) => HomePage(),
        '/detalleEmpresa' : (BuildContext context) => DetalleEmpresaPage(),
      },
    );
  }
}
