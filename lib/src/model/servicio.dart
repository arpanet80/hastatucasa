import 'package:cloud_firestore/cloud_firestore.dart';

class Servicio {
  String id;
  String descripcion;
  bool  pedido;
  String rubro;
    
  Servicio.forFirestore(DocumentSnapshot doc)
  : id = doc.documentID,
    descripcion = doc.data['descripcion'],
    pedido = doc.data['pedido'],
    rubro = doc.data['rubro'];
}

List<Servicio> toServicioList(QuerySnapshot query) {
  return query.documents.map( (doc) => Servicio.forFirestore(doc) ).toList();
}