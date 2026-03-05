// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scale and concurrency settings for the HTTP trigger.
class FunctionsScaleAndConcurrencyHttp {
  /// The maximum number of concurrent HTTP trigger invocations per instance.
  final pulumi.Input<int>? perInstanceConcurrency;

  /// Creates a new [FunctionsScaleAndConcurrencyHttp].
  /// [perInstanceConcurrency] The maximum number of concurrent HTTP trigger invocations per instance.
  FunctionsScaleAndConcurrencyHttp({
    this.perInstanceConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perInstanceConcurrency': ?perInstanceConcurrency,
    };
  }

  factory FunctionsScaleAndConcurrencyHttp.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyHttp(
      perInstanceConcurrency: (() { final guardedValue = map['perInstanceConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

