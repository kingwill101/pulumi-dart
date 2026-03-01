// ignore_for_file: unused_element, unnecessary_cast


/// Scale and concurrency settings for the HTTP trigger.
class FunctionsScaleAndConcurrencyHttp {
  /// The maximum number of concurrent HTTP trigger invocations per instance.
  final int? perInstanceConcurrency;

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
      perInstanceConcurrency: map['perInstanceConcurrency'] == null ? null : map['perInstanceConcurrency'] as int,
    );
  }
}

