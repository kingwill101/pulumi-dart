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
    required pulumi.Output<String> issueModelId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      issueModelId = pulumi.Input.asInput<String>(issueModelId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueModelId': issueModelId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIssueModelArgs.fromMap(Map<String, dynamic> map) {
    return GetIssueModelArgs(
      issueModelId: pulumi.Output.create<String>(map['issueModelId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

