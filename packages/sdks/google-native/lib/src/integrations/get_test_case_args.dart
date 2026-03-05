// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_test_case_args_doc}
/// Arguments for getTestCase.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_test_case_args_doc}
class GetTestCaseArgs {
  final pulumi.Input<String> integrationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testCaseId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetTestCaseArgs].
  /// [integrationId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [testCaseId] Required.
  /// [versionId] Required.
  GetTestCaseArgs({
    required this.integrationId,
    required this.location,
    this.project,
    required this.testCaseId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationId': integrationId,
      'location': location,
      'project': ?project,
      'testCaseId': testCaseId,
      'versionId': versionId,
    };
  }

  factory GetTestCaseArgs.fromMap(Map<String, dynamic> map) {
    return GetTestCaseArgs(
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testCaseId: pulumi.Input.fromValue(map['testCaseId'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

