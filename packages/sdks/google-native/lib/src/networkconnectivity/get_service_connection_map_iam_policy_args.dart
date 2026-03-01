// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_map_iam_policy_args_doc}
/// Arguments for getServiceConnectionMapIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_map_iam_policy_args_doc}
class GetServiceConnectionMapIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionMapId;

  /// Creates a new [GetServiceConnectionMapIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceConnectionMapId] Required.
  GetServiceConnectionMapIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceConnectionMapId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceConnectionMapId = pulumi.Input.asInput<String>(serviceConnectionMapId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceConnectionMapId': serviceConnectionMapId,
    };
  }

  factory GetServiceConnectionMapIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceConnectionMapId: pulumi.Output.create<String>(map['serviceConnectionMapId'] as String),
    );
  }
}

