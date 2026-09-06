// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_scale_and_concurrency_triggers_http_response.dart';

/// Scale and concurrency settings for the function app triggers.
class FunctionsScaleAndConcurrencyTriggersResponse {
  /// Scale and concurrency settings for the HTTP trigger.
  final pulumi.Input<FunctionsScaleAndConcurrencyTriggersHttpResponse?>? http;

  /// Creates a new [FunctionsScaleAndConcurrencyTriggersResponse].
  /// [http] Scale and concurrency settings for the HTTP trigger.
  const FunctionsScaleAndConcurrencyTriggersResponse({
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyTriggersHttpResponse, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory FunctionsScaleAndConcurrencyTriggersResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyTriggersResponse(
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsScaleAndConcurrencyTriggersHttpResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
