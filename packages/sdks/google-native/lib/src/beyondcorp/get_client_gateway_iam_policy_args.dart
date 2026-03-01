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
    required pulumi.Output<String> clientGatewayId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      clientGatewayId = pulumi.Input.asInput<String>(clientGatewayId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      clientGatewayId: pulumi.Output.create<String>(map['clientGatewayId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

