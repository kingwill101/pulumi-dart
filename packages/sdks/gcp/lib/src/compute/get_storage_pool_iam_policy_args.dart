// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_storage_pool_iam_policy_get_storage_pool_iam_policy_args_doc}
/// Arguments for getStoragePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_storage_pool_iam_policy_get_storage_pool_iam_policy_args_doc}
class GetStoragePoolIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the zone where the storage pool resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetStoragePoolIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the storage pool resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  GetStoragePoolIamPolicyArgs({required this.name, this.project, this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'project': ?project, 'zone': ?zone};
  }

  factory GetStoragePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolIamPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
