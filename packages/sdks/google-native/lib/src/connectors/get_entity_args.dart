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
    required this.connectionId,
    required this.entityId,
    required this.entityTypeId,
    required this.location,
    this.project,
  });

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
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      entityTypeId: pulumi.Input.fromValue(map['entityTypeId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

