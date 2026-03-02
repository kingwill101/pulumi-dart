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
  final pulumi.Input<String> object;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetObjectAccessControlArgs].
  /// [bucket] Required.
  /// [entity] Required.
  /// [generation] Optional.
  /// [object] Required.
  /// [userProject] Optional.
  GetObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.generation,
    required this.object,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'generation': ?generation,
      'object': object,
      'userProject': ?userProject,
    };
  }

  factory GetObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectAccessControlArgs(
      bucket: (map['bucket'] as String).input(),
      entity: (map['entity'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as String).input(),
      object: (map['object'] as String).input(),
      userProject: map['userProject'] == null ? null : (map['userProject'] as String).input(),
    );
  }
}

