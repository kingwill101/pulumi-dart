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
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> entity,
    pulumi.Output<String>? generation,
    required pulumi.Output<String> object,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      entity = pulumi.Input.asInput<String>(entity),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      object = pulumi.Input.asInput<String>(object),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

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
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      entity: pulumi.Output.create<String>(map['entity'] as String),
      generation: map['generation'] == null ? null : pulumi.Output.create<String>(map['generation'] as String),
      object: pulumi.Output.create<String>(map['object'] as String),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

