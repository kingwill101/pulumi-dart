// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_binding_iam_policy_networkservices_v1beta1_args_doc}
/// Arguments for getServiceBindingIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_binding_iam_policy_networkservices_v1beta1_args_doc}
class GetServiceBindingIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceBindingId;

  /// Creates a new [GetServiceBindingIamPolicyNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceBindingId] Required.
  GetServiceBindingIamPolicyNetworkservicesV1beta1Args({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceBindingId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceBindingId = pulumi.Input.asInput<String>(serviceBindingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceBindingId': serviceBindingId,
    };
  }

  factory GetServiceBindingIamPolicyNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingIamPolicyNetworkservicesV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceBindingId: pulumi.Output.create<String>(map['serviceBindingId'] as String),
    );
  }
}

