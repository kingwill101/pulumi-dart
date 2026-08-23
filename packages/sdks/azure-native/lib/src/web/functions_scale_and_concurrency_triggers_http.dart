// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scale and concurrency settings for the HTTP trigger.
class FunctionsScaleAndConcurrencyTriggersHttp {
  /// The maximum number of concurrent HTTP trigger invocations per instance.
  final pulumi.Input<int>? perInstanceConcurrency;

  /// Creates a new [FunctionsScaleAndConcurrencyTriggersHttp].
  /// [perInstanceConcurrency] The maximum number of concurrent HTTP trigger invocations per instance.
  const FunctionsScaleAndConcurrencyTriggersHttp({
    this.perInstanceConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perInstanceConcurrency': ?perInstanceConcurrency,
    };
  }

  factory FunctionsScaleAndConcurrencyTriggersHttp.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyTriggersHttp(
      perInstanceConcurrency: (() { final guardedValue = map['perInstanceConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
