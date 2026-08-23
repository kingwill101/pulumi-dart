// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_object_iam_policy_args_doc}
/// Arguments for getObjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_object_iam_policy_args_doc}
class GetObjectIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String> object_;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetObjectIamPolicyArgs].
  /// [bucket] Required.
  /// [generation] Optional.
  /// [object_] Required.
  /// [userProject] Optional.
  const GetObjectIamPolicyArgs({
    required this.bucket,
    this.generation,
    required this.object_,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object_,
      'userProject': ?userProject,
    };
  }

  factory GetObjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectIamPolicyArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
