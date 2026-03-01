// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudiot_v1_get_registry_iam_policy_args_doc}
/// Arguments for getRegistryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_get_registry_iam_policy_args_doc}
class GetRegistryIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [GetRegistryIamPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [registryId] Required.
  GetRegistryIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> registryId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      registryId = pulumi.Input.asInput<String>(registryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'registryId': registryId,
    };
  }

  factory GetRegistryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      registryId: pulumi.Output.create<String>(map['registryId'] as String),
    );
  }
}

