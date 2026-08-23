// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_event_parameter_response.dart';

/// The configuration for mocking of a task during test execution Next available id: 4
class GoogleCloudIntegrationsV1alphaMockConfigResponse {
  /// Optional. Number of times the given task should fail for failure mock strategy
  final pulumi.Input<String> failedExecutions;
  /// Mockstrategy defines how the particular task should be mocked during test execution
  final pulumi.Input<String> mockStrategy;
  /// Optional. List of key-value pairs for specific mock strategy
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaEventParameterResponse>> parameters;

  /// Creates a new [GoogleCloudIntegrationsV1alphaMockConfigResponse].
  /// [failedExecutions] Optional. Number of times the given task should fail for failure mock strategy
  /// [mockStrategy] Mockstrategy defines how the particular task should be mocked during test execution
  /// [parameters] Optional. List of key-value pairs for specific mock strategy
  const GoogleCloudIntegrationsV1alphaMockConfigResponse({
    required this.failedExecutions,
    required this.mockStrategy,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedExecutions': failedExecutions,
      'mockStrategy': mockStrategy,
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudIntegrationsV1alphaEventParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaEventParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudIntegrationsV1alphaMockConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaMockConfigResponse(
      failedExecutions: pulumi.Input.fromValue(map['failedExecutions'] as String),
      mockStrategy: pulumi.Input.fromValue(map['mockStrategy'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaEventParameterResponse>(map['parameters']!, (value) => GoogleCloudIntegrationsV1alphaEventParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
