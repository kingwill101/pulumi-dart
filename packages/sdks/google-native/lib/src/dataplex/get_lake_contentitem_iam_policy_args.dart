// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_contentitem_iam_policy_args_doc}
/// Arguments for getLakeContentitemIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_contentitem_iam_policy_args_doc}
class GetLakeContentitemIamPolicyArgs {
  final pulumi.Input<String> contentitemId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeContentitemIamPolicyArgs].
  /// [contentitemId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetLakeContentitemIamPolicyArgs({
    required this.contentitemId,
    required this.lakeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentitemId': contentitemId,
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetLakeContentitemIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeContentitemIamPolicyArgs(
      contentitemId: pulumi.Input.fromValue(map['contentitemId'] as String),
      lakeId: pulumi.Input.fromValue(map['lakeId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
