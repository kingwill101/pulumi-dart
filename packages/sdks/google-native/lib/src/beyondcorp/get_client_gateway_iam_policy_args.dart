// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_client_gateway_iam_policy_args_doc}
/// Arguments for getClientGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_client_gateway_iam_policy_args_doc}
class GetClientGatewayIamPolicyArgs {
  final pulumi.Input<String> clientGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientGatewayIamPolicyArgs].
  /// [clientGatewayId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetClientGatewayIamPolicyArgs({
    required this.clientGatewayId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGatewayId': clientGatewayId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetClientGatewayIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClientGatewayIamPolicyArgs(
      clientGatewayId: (map['clientGatewayId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

