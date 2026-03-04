// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_gateway_iam_policy_networkservices_v1beta1_args_doc}
/// Arguments for getGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_gateway_iam_policy_networkservices_v1beta1_args_doc}
class GetGatewayIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayIamPolicyNetworkservicesV1beta1Args].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetGatewayIamPolicyNetworkservicesV1beta1Args({
    required this.gatewayId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetGatewayIamPolicyNetworkservicesV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayIamPolicyNetworkservicesV1beta1Args(
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
