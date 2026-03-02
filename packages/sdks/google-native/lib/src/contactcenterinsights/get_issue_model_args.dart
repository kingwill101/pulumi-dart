// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_issue_model_args_doc}
/// Arguments for getIssueModel.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_issue_model_args_doc}
class GetIssueModelArgs {
  final pulumi.Input<String> issueModelId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIssueModelArgs].
  /// [issueModelId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIssueModelArgs({
    required this.issueModelId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueModelId': issueModelId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIssueModelArgs.fromMap(Map<String, dynamic> map) {
    return GetIssueModelArgs(
      issueModelId: (map['issueModelId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

