// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_policy_iam_policy_args_doc}
/// Arguments for getServiceConnectionPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_iam_policy_args_doc}
class GetServiceConnectionPolicyIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionPolicyId;

  /// Creates a new [GetServiceConnectionPolicyIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceConnectionPolicyId] Required.
  GetServiceConnectionPolicyIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceConnectionPolicyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceConnectionPolicyId = pulumi.Input.asInput<String>(serviceConnectionPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceConnectionPolicyId': serviceConnectionPolicyId,
    };
  }

  factory GetServiceConnectionPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionPolicyIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceConnectionPolicyId: pulumi.Output.create<String>(map['serviceConnectionPolicyId'] as String),
    );
  }
}

