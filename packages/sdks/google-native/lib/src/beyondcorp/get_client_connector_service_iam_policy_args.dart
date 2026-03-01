// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_client_connector_service_iam_policy_args_doc}
/// Arguments for getClientConnectorServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_client_connector_service_iam_policy_args_doc}
class GetClientConnectorServiceIamPolicyArgs {
  final pulumi.Input<String> clientConnectorServiceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientConnectorServiceIamPolicyArgs].
  /// [clientConnectorServiceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetClientConnectorServiceIamPolicyArgs({
    required pulumi.Output<String> clientConnectorServiceId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      clientConnectorServiceId = pulumi.Input.asInput<String>(clientConnectorServiceId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConnectorServiceId': clientConnectorServiceId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetClientConnectorServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClientConnectorServiceIamPolicyArgs(
      clientConnectorServiceId: pulumi.Output.create<String>(map['clientConnectorServiceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

