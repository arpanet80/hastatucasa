import 'package:flutter/material.dart';
import 'package:hastatucasa/src/model/empresa.dart';
import 'package:hastatucasa/src/widgets/empresa_tile.dart';

class EmpresaList extends StatelessWidget {
  const EmpresaList({
    @required this.empresas,
  }) ;

  final List<Empresa> empresas;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: empresas.length,
      itemBuilder: (context, index){
        return EmpresaTile(empresas[index]);
      },

      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
          indent: 80,
          endIndent: 15,
        );
      },
    );
  }
}
