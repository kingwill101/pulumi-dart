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
    required pulumi.Output<String> integrationId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> testCaseId,
    required pulumi.Output<String> versionId,
  }) :
      integrationId = pulumi.Input.asInput<String>(integrationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      testCaseId = pulumi.Input.asInput<String>(testCaseId),
      versionId = pulumi.Input.asInput<String>(versionId);

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
      integrationId: pulumi.Output.create<String>(map['integrationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      testCaseId: pulumi.Output.create<String>(map['testCaseId'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

