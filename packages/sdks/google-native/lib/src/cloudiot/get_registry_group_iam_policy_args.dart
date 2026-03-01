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
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> registryId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      registryId = pulumi.Input.asInput<String>(registryId);

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
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      registryId: pulumi.Output.create<String>(map['registryId'] as String),
    );
  }
}

