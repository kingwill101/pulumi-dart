// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafusion_v1beta1_get_instance_namespace_iam_policy_args_doc}
/// Arguments for getInstanceNamespaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datafusion_v1beta1_get_instance_namespace_iam_policy_args_doc}
class GetInstanceNamespaceIamPolicyArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceNamespaceIamPolicyArgs].
  /// [instanceId] Required.
  /// [location] Required.
  /// [namespaceId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInstanceNamespaceIamPolicyArgs({
    required this.instanceId,
    required this.location,
    required this.namespaceId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'namespaceId': namespaceId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetInstanceNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceNamespaceIamPolicyArgs(
      instanceId: (map['instanceId'] as String).input(),
      location: (map['location'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

