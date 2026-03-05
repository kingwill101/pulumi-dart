// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_assertion.dart';
import 'google_cloud_integrations_v1alpha_mock_config.dart';

/// The task mock configuration details and assertions for functional tests. Next available id: 5
class GoogleCloudIntegrationsV1alphaTestTaskConfig {
  /// Optional. List of conditions or expressions which should be evaluated to true unless there is a bug/problem in the integration. These are evaluated one the task execution is completed as per the mock strategy in test case
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaAssertion>>? assertions;
  /// Optional. Defines how to mock the given task during test execution
  final pulumi.Input<GoogleCloudIntegrationsV1alphaMockConfig>? mockConfig;
  /// This defines in the test case, the task name in integration which will be mocked by this test task config
  final pulumi.Input<String> task;
  /// This defines in the test case, the task in integration which will be mocked by this test task config
  final pulumi.Input<String> taskNumber;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTestTaskConfig].
  /// [assertions] Optional. List of conditions or expressions which should be evaluated to true unless there is a bug/problem in the integration. These are evaluated one the task execution is completed as per the mock strategy in test case
  /// [mockConfig] Optional. Defines how to mock the given task during test execution
  /// [task] This defines in the test case, the task name in integration which will be mocked by this test task config
  /// [taskNumber] This defines in the test case, the task in integration which will be mocked by this test task config
  GoogleCloudIntegrationsV1alphaTestTaskConfig({
    this.assertions,
    this.mockConfig,
    required this.task,
    required this.taskNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaAssertion>, List<Map<String, dynamic>>>(assertions, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaAssertion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mockConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaMockConfig, Map<String, dynamic>>(mockConfig, (value) => value.toMap()),
      'task': task,
      'taskNumber': taskNumber,
    };
  }

  factory GoogleCloudIntegrationsV1alphaTestTaskConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTestTaskConfig(
      assertions: (() { final guardedValue = map['assertions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaAssertion>(guardedValue, (value) => GoogleCloudIntegrationsV1alphaAssertion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mockConfig: (() { final guardedValue = map['mockConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaMockConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      task: pulumi.Input.fromValue(map['task'] as String),
      taskNumber: pulumi.Input.fromValue(map['taskNumber'] as String),
    );
  }
}

