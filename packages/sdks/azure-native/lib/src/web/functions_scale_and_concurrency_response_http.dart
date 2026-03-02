// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scale and concurrency settings for the HTTP trigger.
class FunctionsScaleAndConcurrencyResponseHttp {
  /// The maximum number of concurrent HTTP trigger invocations per instance.
  final pulumi.Input<int>? perInstanceConcurrency;

  /// Creates a new [FunctionsScaleAndConcurrencyResponseHttp].
  /// [perInstanceConcurrency] The maximum number of concurrent HTTP trigger invocations per instance.
  FunctionsScaleAndConcurrencyResponseHttp({
    this.perInstanceConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perInstanceConcurrency': ?perInstanceConcurrency,
    };
  }

  factory FunctionsScaleAndConcurrencyResponseHttp.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyResponseHttp(
      perInstanceConcurrency: map['perInstanceConcurrency'] == null ? null : (map['perInstanceConcurrency'] as int).input(),
    );
  }
}

