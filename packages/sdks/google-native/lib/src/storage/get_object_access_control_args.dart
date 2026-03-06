// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_object_access_control_args_doc}
/// Arguments for getObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_object_access_control_args_doc}
class GetObjectAccessControlArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> entity;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String> object_;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetObjectAccessControlArgs].
  /// [bucket] Required.
  /// [entity] Required.
  /// [generation] Optional.
  /// [object_] Required.
  /// [userProject] Optional.
  const GetObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.generation,
    required this.object_,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'generation': ?generation,
      'object': object_,
      'userProject': ?userProject,
    };
  }

  factory GetObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectAccessControlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      entity: pulumi.Input.fromValue(map['entity'] as String),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

