// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_content_iam_policy_args_doc}
/// Arguments for getLakeContentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_content_iam_policy_args_doc}
class GetLakeContentIamPolicyArgs {
  final pulumi.Input<String> contentId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeContentIamPolicyArgs].
  /// [contentId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetLakeContentIamPolicyArgs({
    required this.contentId,
    required this.lakeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentId': contentId,
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetLakeContentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeContentIamPolicyArgs(
      contentId: (map['contentId'] as String).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

