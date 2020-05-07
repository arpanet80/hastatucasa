import 'package:flutter/material.dart';
import 'package:hastatucasa/src/model/servicio.dart';

class DetalleEmpresaList extends StatelessWidget {
  const DetalleEmpresaList({
    @required this.servicios,
  });

  final List<Servicio> servicios;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: servicios.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(servicios[index].descripcion),
          subtitle: Text(servicios[index].rubro),
        );
      },
    );
  }
}
