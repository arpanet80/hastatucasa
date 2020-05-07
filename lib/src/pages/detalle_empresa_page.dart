import 'package:flutter/material.dart';
import 'package:hastatucasa/src/model/empresa.dart';
import 'package:hastatucasa/db.dart' as db;
import 'package:hastatucasa/src/model/servicio.dart';
import 'package:hastatucasa/src/widgets/detalle_empresa_list.dart';
import 'package:hastatucasa/src/widgets/loading.dart';
import 'package:hastatucasa/src/widgets/red_error.dart';

class DetalleEmpresaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Empresa empresa = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar( title: Text(empresa.nombre,)),
      body: StreamBuilder(
        stream: db.getEmpresaServicio(empresa.id),
        builder: (context, AsyncSnapshot<List<Servicio>> snapshot){

          if(snapshot.hasError) {
              return RedError(snapshot.error);
          }

          if(!snapshot.hasData){
            return Loading();
          }

          List<Servicio> servicios = snapshot.data;
          return DetalleEmpresaList(servicios: servicios);
        }
      ),
    );
  }
  
}
