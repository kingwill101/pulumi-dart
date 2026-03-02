// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_datacenter_connector_vmmigration_v1alpha1_args_doc}
/// Arguments for getDatacenterConnector.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_datacenter_connector_vmmigration_v1alpha1_args_doc}
class GetDatacenterConnectorVmmigrationV1alpha1Args {
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetDatacenterConnectorVmmigrationV1alpha1Args].
  /// [datacenterConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetDatacenterConnectorVmmigrationV1alpha1Args({
    required this.datacenterConnectorId,
    required this.location,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenterConnectorId': datacenterConnectorId,
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetDatacenterConnectorVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorVmmigrationV1alpha1Args(
      datacenterConnectorId: (map['datacenterConnectorId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
    );
  }
}

