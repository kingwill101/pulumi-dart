// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudiot_v1_get_registry_group_iam_policy_args_doc}
/// Arguments for getRegistryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_get_registry_group_iam_policy_args_doc}
class GetRegistryGroupIamPolicyArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [GetRegistryGroupIamPolicyArgs].
  /// [groupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [registryId] Required.
  GetRegistryGroupIamPolicyArgs({
    required this.groupId,
    required this.location,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'location': location,
      'project': ?project,
      'registryId': registryId,
    };
  }

  factory GetRegistryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryGroupIamPolicyArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
    );
  }
}
