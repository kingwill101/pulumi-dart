// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scale and concurrency settings for the HTTP trigger.
class FunctionsScaleAndConcurrencyTriggersHttpResponse {
  /// The maximum number of concurrent HTTP trigger invocations per instance.
  final pulumi.Input<int>? perInstanceConcurrency;

  /// Creates a new [FunctionsScaleAndConcurrencyTriggersHttpResponse].
  /// [perInstanceConcurrency] The maximum number of concurrent HTTP trigger invocations per instance.
  const FunctionsScaleAndConcurrencyTriggersHttpResponse({
    this.perInstanceConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perInstanceConcurrency': ?perInstanceConcurrency,
    };
  }

  factory FunctionsScaleAndConcurrencyTriggersHttpResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyTriggersHttpResponse(
      perInstanceConcurrency: (() { final guardedValue = map['perInstanceConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
