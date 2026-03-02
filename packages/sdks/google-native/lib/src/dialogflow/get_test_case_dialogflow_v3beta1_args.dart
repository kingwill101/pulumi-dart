// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_test_case_dialogflow_v3beta1_args_doc}
/// Arguments for getTestCase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_test_case_dialogflow_v3beta1_args_doc}
class GetTestCaseDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testCaseId;

  /// Creates a new [GetTestCaseDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [testCaseId] Required.
  GetTestCaseDialogflowV3beta1Args({
    required this.agentId,
    required this.location,
    this.project,
    required this.testCaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'location': location,
      'project': ?project,
      'testCaseId': testCaseId,
    };
  }

  factory GetTestCaseDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTestCaseDialogflowV3beta1Args(
      agentId: (map['agentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      testCaseId: (map['testCaseId'] as String).input(),
    );
  }
}

