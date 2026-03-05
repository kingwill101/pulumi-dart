// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_engine_args_doc}
/// Arguments for getEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_engine_args_doc}
class GetEngineArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> engineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEngineArgs].
  /// [collectionId] Required.
  /// [engineId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEngineArgs({
    required this.collectionId,
    required this.engineId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'engineId': engineId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEngineArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

