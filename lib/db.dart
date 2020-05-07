import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hastatucasa/src/model/empresa.dart';
import 'package:hastatucasa/src/model/servicio.dart';

Stream<List<Empresa>> getEmpresas(){
  return Firestore.instance.collection('EMPRESA').snapshots().map(toEmpresaList);
}

Stream<List<Servicio>> getEmpresaServicio( String servicioId){
  //return Firestore.instance.collection('EMPRESA').document(servicioId).collection('SERVICIO').snapshots().map(toServicioList);
  return Firestore.instance.collection('EMPRESA/$servicioId/SERVICIO').snapshots().map(toServicioList);
}