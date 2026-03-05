// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'polling_options.dart';

/// Async options that determine when a resource should finish.
class AsyncOptions {
  /// Method regex where this policy will apply.
  final pulumi.Input<String>? methodMatch;
  /// Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  final pulumi.Input<PollingOptions>? pollingOptions;

  /// Creates a new [AsyncOptions].
  /// [methodMatch] Method regex where this policy will apply.
  /// [pollingOptions] Deployment manager will poll instances for this API resource setting a RUNNING state, and blocking until polling conditions tell whether the resource is completed or failed.
  AsyncOptions({
    this.methodMatch,
    this.pollingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodMatch': ?methodMatch,
      'pollingOptions': ?pulumi.Input.mapOptionalInputValue<PollingOptions, Map<String, dynamic>>(pollingOptions, (value) => value.toMap()),
    };
  }

  factory AsyncOptions.fromMap(Map<String, dynamic> map) {
    return AsyncOptions(
      methodMatch: (() { final guardedValue = map['methodMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollingOptions: (() { final guardedValue = map['pollingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PollingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

