
import 'package:flutter/material.dart';
import 'package:hastatucasa/src/model/empresa.dart';

class EmpresaTile extends StatelessWidget {
  final Empresa empresa;

  const EmpresaTile(this.empresa);
 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.of(context).pushNamed('/detalleEmpresa', arguments: empresa);
      },
      
      leading: Container(
        width: 55.0,
        decoration: BoxDecoration(
          color: Colors.teal[100],
          shape: BoxShape.circle,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(empresa.nombre),
          Text(
            empresa.estado.toString(),
            style: TextStyle(
              color: Colors.red[500],
              fontSize: 12,
            ) 
          ),
        ],
      ),
      subtitle: Text(empresa.celular + ' ' + empresa.telefono),

      
    );
  }
}