// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_datastore_get_datastore_args_doc}
/// Arguments for getDatastore.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_datastore_get_datastore_args_doc}
class GetDatastoreArgs {
  /// either regional or zonal location of the resource.
  final pulumi.Input<String> location;

  /// Name of the resource.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatastoreArgs].
  /// [location] either regional or zonal location of the resource.
  /// [name] Name of the resource.
  /// [project] Optional.
  GetDatastoreArgs({required this.location, required this.name, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
