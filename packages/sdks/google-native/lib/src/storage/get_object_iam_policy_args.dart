// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_object_iam_policy_args_doc}
/// Arguments for getObjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_object_iam_policy_args_doc}
class GetObjectIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetObjectIamPolicyArgs].
  /// [bucket] Required.
  /// [generation] Optional.
  /// [object] Required.
  /// [userProject] Optional.
  GetObjectIamPolicyArgs({
    required this.bucket,
    this.generation,
    required this.object,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
      'userProject': ?userProject,
    };
  }

  factory GetObjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectIamPolicyArgs(
      bucket: (map['bucket'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as String).input(),
      object: (map['object'] as String).input(),
      userProject: map['userProject'] == null ? null : (map['userProject'] as String).input(),
    );
  }
}

