// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_default_object_access_control_args_doc}
/// Arguments for getDefaultObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_default_object_access_control_args_doc}
class GetDefaultObjectAccessControlArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> entity;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetDefaultObjectAccessControlArgs].
  /// [bucket] Required.
  /// [entity] Required.
  /// [userProject] Optional.
  GetDefaultObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'userProject': ?userProject,
    };
  }

  factory GetDefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultObjectAccessControlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      entity: pulumi.Input.fromValue(map['entity'] as String),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

