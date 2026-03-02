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
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceBindingId,
  });

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
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceBindingId: (map['serviceBindingId'] as String).input(),
    );
  }
}

