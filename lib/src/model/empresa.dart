import 'package:cloud_firestore/cloud_firestore.dart';

class Empresa {
  String id;
  String nombre;
  String telefono;
  String celular;
  String direccion;
  String urllogo;
  bool estado;

  Empresa.forFirestore(DocumentSnapshot doc)
  : id = doc.documentID,
    nombre = doc.data['nombre'],
    telefono = doc.data['telefono'],
    celular = doc.data['celular'],
    direccion = doc.data['direccion'],
    urllogo = doc.data['urllogo'],
    estado = doc.data['estado'];

}

List<Empresa> toEmpresaList(QuerySnapshot query) {
  return query.documents.map( (doc) => Empresa.forFirestore(doc) ).toList();
}