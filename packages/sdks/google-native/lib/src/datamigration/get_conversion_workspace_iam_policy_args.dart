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
    required this.conversionWorkspaceId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      conversionWorkspaceId: (map['conversionWorkspaceId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

