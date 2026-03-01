// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_test_case_args_doc}
/// Arguments for getTestCase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_test_case_args_doc}
class GetTestCaseArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testCaseId;

  /// Creates a new [GetTestCaseArgs].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [testCaseId] Required.
  GetTestCaseArgs({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> testCaseId,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      testCaseId = pulumi.Input.asInput<String>(testCaseId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'location': location,
      'project': ?project,
      'testCaseId': testCaseId,
    };
  }

  factory GetTestCaseArgs.fromMap(Map<String, dynamic> map) {
    return GetTestCaseArgs(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      testCaseId: pulumi.Output.create<String>(map['testCaseId'] as String),
    );
  }
}

