// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_scale_and_concurrency_triggers_http.dart';

/// Scale and concurrency settings for the function app triggers.
class FunctionsScaleAndConcurrencyTriggers {
  /// Scale and concurrency settings for the HTTP trigger.
  final pulumi.Input<FunctionsScaleAndConcurrencyTriggersHttp>? http;

  /// Creates a new [FunctionsScaleAndConcurrencyTriggers].
  /// [http] Scale and concurrency settings for the HTTP trigger.
  const FunctionsScaleAndConcurrencyTriggers({
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyTriggersHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory FunctionsScaleAndConcurrencyTriggers.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyTriggers(
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsScaleAndConcurrencyTriggersHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
