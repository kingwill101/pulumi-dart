// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v2_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_connectors_v2_get_entity_args_doc}
class GetEntityArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityArgs].
  /// [connectionId] Required.
  /// [entityId] Required.
  /// [entityTypeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntityArgs({
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> entityId,
    required pulumi.Output<String> entityTypeId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      connectionId = pulumi.Input.asInput<String>(connectionId),
      entityId = pulumi.Input.asInput<String>(entityId),
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'entityId': entityId,
      'entityTypeId': entityTypeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      entityId: pulumi.Output.create<String>(map['entityId'] as String),
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

