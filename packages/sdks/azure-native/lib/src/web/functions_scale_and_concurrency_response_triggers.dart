// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_scale_and_concurrency_response_http.dart';

/// Scale and concurrency settings for the function app triggers.
class FunctionsScaleAndConcurrencyResponseTriggers {
  /// Scale and concurrency settings for the HTTP trigger.
  final pulumi.Input<FunctionsScaleAndConcurrencyResponseHttp>? http;

  /// Creates a new [FunctionsScaleAndConcurrencyResponseTriggers].
  /// [http] Scale and concurrency settings for the HTTP trigger.
  FunctionsScaleAndConcurrencyResponseTriggers({
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyResponseHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory FunctionsScaleAndConcurrencyResponseTriggers.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyResponseTriggers(
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsScaleAndConcurrencyResponseHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

