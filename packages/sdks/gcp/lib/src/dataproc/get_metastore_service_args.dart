// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_service_get_metastore_service_args_doc}
/// Arguments for getMetastoreService.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_service_get_metastore_service_args_doc}
class GetMetastoreServiceArgs {
  /// The location where the metastore service resides.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the metastore service.
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetastoreServiceArgs].
  /// [location] The location where the metastore service resides.
  /// [project] The project in which the resource belongs. If it
  /// [serviceId] The ID of the metastore service.
  const GetMetastoreServiceArgs({
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetMetastoreServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
