// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'polling_options_response.dart';

/// Async options that determine when a resource should finish.
class AsyncOptionsResponse {
  /// Method regex where this policy will apply.
  final pulumi.Input<String> methodMatch;
  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final pulumi.Input<PollingOptionsResponse> pollingOptions;

  /// Creates a new [AsyncOptionsResponse].
  /// [methodMatch] Method regex where this policy will apply.
  /// [pollingOptions] Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  const AsyncOptionsResponse({
    required this.methodMatch,
    required this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodMatch': methodMatch,
      'pollingOptions': pulumi.Input.mapInputValue<PollingOptionsResponse, Map<String, dynamic>>(pollingOptions, (value) => value.toMap()),
    };
  }

  factory AsyncOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AsyncOptionsResponse(
      methodMatch: pulumi.Input.fromValue(map['methodMatch'] as String),
      pollingOptions: pulumi.Input.fromValue(PollingOptionsResponse.fromMap((map['pollingOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

