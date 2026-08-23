// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_assertion_assertion_strategy.dart';
import 'google_cloud_integrations_v1alpha_event_parameter.dart';

/// An assertion which will check for a condition over task execution status or an expression for task output variables Next available id: 5
class GoogleCloudIntegrationsV1alphaAssertion {
  /// The type of assertion to perform.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy>? assertionStrategy;
  /// Optional. Standard filter expression for ASSERT_CONDITION to succeed
  final pulumi.Input<String>? condition;
  /// Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  final pulumi.Input<GoogleCloudIntegrationsV1alphaEventParameter>? parameter;
  /// Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  final pulumi.Input<int>? retryCount;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAssertion].
  /// [assertionStrategy] The type of assertion to perform.
  /// [condition] Optional. Standard filter expression for ASSERT_CONDITION to succeed
  /// [parameter] Optional. Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to succeed
  /// [retryCount] Number of times given task should be retried in case of ASSERT_FAILED_EXECUTION
  const GoogleCloudIntegrationsV1alphaAssertion({
    this.assertionStrategy,
    this.condition,
    this.parameter,
    this.retryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionStrategy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy, String>(assertionStrategy, (value) => value.wireValue),
      'condition': ?condition,
      'parameter': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaEventParameter, Map<String, dynamic>>(parameter, (value) => value.toMap()),
      'retryCount': ?retryCount,
    };
  }

  factory GoogleCloudIntegrationsV1alphaAssertion.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAssertion(
      assertionStrategy: (() { final guardedValue = map['assertionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy.fromValue(guardedValue as String)); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaEventParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryCount: (() { final guardedValue = map['retryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
