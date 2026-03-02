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
    required this.location,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'registryId': registryId,
    };
  }

  factory GetRegistryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryIamPolicyArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      registryId: (map['registryId'] as String).input(),
    );
  }
}

