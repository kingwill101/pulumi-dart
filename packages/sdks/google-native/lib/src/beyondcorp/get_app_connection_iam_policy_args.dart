// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_connection_iam_policy_args_doc}
/// Arguments for getAppConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_connection_iam_policy_args_doc}
class GetAppConnectionIamPolicyArgs {
  final pulumi.Input<String> appConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectionIamPolicyArgs].
  /// [appConnectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAppConnectionIamPolicyArgs({
    required pulumi.Output<String> appConnectionId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      appConnectionId = pulumi.Input.asInput<String>(appConnectionId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectionId': appConnectionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAppConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionIamPolicyArgs(
      appConnectionId: pulumi.Output.create<String>(map['appConnectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

