// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_event_parameter.dart';
import 'google_cloud_integrations_v1alpha_mock_config_mock_strategy.dart';

/// The configuration for mocking of a task during test execution Next available id: 4
class GoogleCloudIntegrationsV1alphaMockConfig {
  /// Optional. Number of times the given task should fail for failure mock strategy
  final pulumi.Input<String>? failedExecutions;
  /// Mockstrategy defines how the particular task should be mocked during test execution
  final pulumi.Input<GoogleCloudIntegrationsV1alphaMockConfigMockStrategy>? mockStrategy;
  /// Optional. List of key-value pairs for specific mock strategy
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaEventParameter>>? parameters;

  /// Creates a new [GoogleCloudIntegrationsV1alphaMockConfig].
  /// [failedExecutions] Optional. Number of times the given task should fail for failure mock strategy
  /// [mockStrategy] Mockstrategy defines how the particular task should be mocked during test execution
  /// [parameters] Optional. List of key-value pairs for specific mock strategy
  GoogleCloudIntegrationsV1alphaMockConfig({
    this.failedExecutions,
    this.mockStrategy,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedExecutions': ?failedExecutions,
      'mockStrategy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaMockConfigMockStrategy, String>(mockStrategy, (value) => value.value),
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaEventParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaEventParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudIntegrationsV1alphaMockConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaMockConfig(
      failedExecutions: map['failedExecutions'] == null ? null : (map['failedExecutions'] as String).input(),
      mockStrategy: map['mockStrategy'] == null ? null : (GoogleCloudIntegrationsV1alphaMockConfigMockStrategy.fromValue(map['mockStrategy'] as String)).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaEventParameter>(map['parameters'], (value) => GoogleCloudIntegrationsV1alphaEventParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

