// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_conversion_workspace_iam_policy_args_doc}
/// Arguments for getConversionWorkspaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_conversion_workspace_iam_policy_args_doc}
class GetConversionWorkspaceIamPolicyArgs {
  final pulumi.Input<String> conversionWorkspaceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversionWorkspaceIamPolicyArgs].
  /// [conversionWorkspaceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConversionWorkspaceIamPolicyArgs({
    required pulumi.Output<String> conversionWorkspaceId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      conversionWorkspaceId = pulumi.Input.asInput<String>(conversionWorkspaceId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionWorkspaceId': conversionWorkspaceId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConversionWorkspaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConversionWorkspaceIamPolicyArgs(
      conversionWorkspaceId: pulumi.Output.create<String>(map['conversionWorkspaceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

