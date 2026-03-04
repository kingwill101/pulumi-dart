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
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      testCaseId: pulumi.Input.fromValue(map['testCaseId'] as String),
    );
  }
}
