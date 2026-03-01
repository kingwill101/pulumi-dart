// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_datacenter_connector_args_doc}
/// Arguments for getDatacenterConnector.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_datacenter_connector_args_doc}
class GetDatacenterConnectorArgs {
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetDatacenterConnectorArgs].
  /// [datacenterConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetDatacenterConnectorArgs({
    required pulumi.Output<String> datacenterConnectorId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sourceId,
  }) :
      datacenterConnectorId = pulumi.Input.asInput<String>(datacenterConnectorId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenterConnectorId': datacenterConnectorId,
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetDatacenterConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorArgs(
      datacenterConnectorId: pulumi.Output.create<String>(map['datacenterConnectorId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
    );
  }
}

