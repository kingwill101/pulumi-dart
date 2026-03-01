// ignore_for_file: unused_element, unnecessary_cast

import 'functions_scale_and_concurrency_response_http.dart';

/// Scale and concurrency settings for the function app triggers.
class FunctionsScaleAndConcurrencyResponseTriggers {
  /// Scale and concurrency settings for the HTTP trigger.
  final FunctionsScaleAndConcurrencyResponseHttp? http;

  /// Creates a new [FunctionsScaleAndConcurrencyResponseTriggers].
  /// [http] Scale and concurrency settings for the HTTP trigger.
  FunctionsScaleAndConcurrencyResponseTriggers({
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?http == null ? null : http!.toMap(),
    };
  }

  factory FunctionsScaleAndConcurrencyResponseTriggers.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyResponseTriggers(
      http: map['http'] == null ? null : FunctionsScaleAndConcurrencyResponseHttp.fromMap((map['http'] as Map).cast<String, dynamic>()),
    );
  }
}

