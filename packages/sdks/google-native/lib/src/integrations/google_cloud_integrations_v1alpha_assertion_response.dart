// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_event_parameter_response.dart';

/// An assertion which will check for a condition over task execution status or an expression for task output variables Next available id: 5
class GoogleCloudIntegrationsV1alphaAssertionResponse {
  /// The type of assertion to perform.
  final pulumi.Input<String> assertionStrategy;
  /// Optional. Standard filter expression for ASSERT_CONDITION to succeed
  final pulumi.Input<String> condition;
  /// Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  final pulumi.Input<GoogleCloudIntegrationsV1alphaEventParameterResponse> parameter;
  /// Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  final pulumi.Input<int> retryCount;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAssertionResponse].
  /// [assertionStrategy] The type of assertion to perform.
  /// [condition] Optional. Standard filter expression for ASSERT_CONDITION to succeed
  /// [parameter] Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  /// [retryCount] Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  const GoogleCloudIntegrationsV1alphaAssertionResponse({
    required this.assertionStrategy,
    required this.condition,
    required this.parameter,
    required this.retryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionStrategy': assertionStrategy,
      'condition': condition,
      'parameter': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaEventParameterResponse, Map<String, dynamic>>(parameter, (value) => value.toMap()),
      'retryCount': retryCount,
    };
  }

  factory GoogleCloudIntegrationsV1alphaAssertionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAssertionResponse(
      assertionStrategy: pulumi.Input.fromValue(map['assertionStrategy'] as String),
      condition: pulumi.Input.fromValue(map['condition'] as String),
      parameter: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaEventParameterResponse.fromMap((map['parameter']! as Map).cast<String, dynamic>())),
      retryCount: pulumi.Input.fromValue(map['retryCount'] as int),
    );
  }
}
