import 'package:flutter/material.dart';
import 'package:hastatucasa/db.dart' as db;
import 'package:hastatucasa/src/model/empresa.dart';
import 'package:hastatucasa/src/widgets/empresa_list.dart';
import 'package:hastatucasa/src/widgets/loading.dart';
import 'package:hastatucasa/src/widgets/red_error.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Hasta tu Casa') ),
      body: StreamBuilder(
          stream: db.getEmpresas(),
          builder: (context, AsyncSnapshot<List<Empresa>> snapshot){

            if(snapshot.hasError) {
              return RedError(snapshot.error);
            }

            if(!snapshot.hasData){
              return Loading();
            }

            List<Empresa> empresas = snapshot.data;
            return EmpresaList(empresas: empresas);

          },
        ),
    );
  }
}

