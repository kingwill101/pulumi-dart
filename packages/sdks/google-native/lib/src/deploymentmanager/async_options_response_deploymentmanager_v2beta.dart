// ignore_for_file: unused_element, unnecessary_cast

import 'polling_options_response_deploymentmanager_v2beta.dart';

/// Async options that determine when a resource should finish.
class AsyncOptionsResponseDeploymentmanagerV2beta {
  /// Method regex where this policy will apply.
  final String methodMatch;
  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final PollingOptionsResponseDeploymentmanagerV2beta pollingOptions;

  /// Creates a new [AsyncOptionsResponseDeploymentmanagerV2beta].
  /// [methodMatch] Method regex where this policy will apply.
  /// [pollingOptions] Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  AsyncOptionsResponseDeploymentmanagerV2beta({
    required this.methodMatch,
    required this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodMatch': methodMatch,
      'pollingOptions': pollingOptions.toMap(),
    };
  }

  factory AsyncOptionsResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return AsyncOptionsResponseDeploymentmanagerV2beta(
      methodMatch: map['methodMatch'] as String,
      pollingOptions: PollingOptionsResponseDeploymentmanagerV2beta.fromMap((map['pollingOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

