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
  const GetConversionWorkspaceIamPolicyArgs({
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
      conversionWorkspaceId: pulumi.Input.fromValue(map['conversionWorkspaceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

