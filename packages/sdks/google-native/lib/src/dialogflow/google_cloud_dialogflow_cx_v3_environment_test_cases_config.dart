// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for continuous tests.
class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig {
  /// Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  final pulumi.Input<bool>? enableContinuousRun;
  /// Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  final pulumi.Input<bool>? enablePredeploymentRun;
  /// A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`
  final pulumi.Input<List<String>>? testCases;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig].
  /// [enableContinuousRun] Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  /// [enablePredeploymentRun] Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  /// [testCases] A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`
  const GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig({
    this.enableContinuousRun,
    this.enablePredeploymentRun,
    this.testCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableContinuousRun': ?enableContinuousRun,
      'enablePredeploymentRun': ?enablePredeploymentRun,
      'testCases': ?testCases,
    };
  }

  factory GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig(
      enableContinuousRun: (() { final guardedValue = map['enableContinuousRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePredeploymentRun: (() { final guardedValue = map['enablePredeploymentRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      testCases: (() { final guardedValue = map['testCases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
