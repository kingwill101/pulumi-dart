// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'polling_options_deploymentmanager_v2beta.dart';

/// Async options that determine when a resource should finish.
class AsyncOptionsDeploymentmanagerV2beta {
  /// Method regex where this policy will apply.
  final pulumi.Input<String>? methodMatch;
  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final pulumi.Input<PollingOptionsDeploymentmanagerV2beta>? pollingOptions;

  /// Creates a new [AsyncOptionsDeploymentmanagerV2beta].
  /// [methodMatch] Method regex where this policy will apply.
  /// [pollingOptions] Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  const AsyncOptionsDeploymentmanagerV2beta({
    this.methodMatch,
    this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodMatch': ?methodMatch,
      'pollingOptions': ?pulumi.Input.mapOptionalInputValue<PollingOptionsDeploymentmanagerV2beta, Map<String, dynamic>>(pollingOptions, (value) => value.toMap()),
    };
  }

  factory AsyncOptionsDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return AsyncOptionsDeploymentmanagerV2beta(
      methodMatch: (() { final guardedValue = map['methodMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollingOptions: (() { final guardedValue = map['pollingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PollingOptionsDeploymentmanagerV2beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

