// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_scale_and_concurrency_http.dart';

/// Scale and concurrency settings for the function app triggers.
class FunctionsScaleAndConcurrencyTriggers {
  /// Scale and concurrency settings for the HTTP trigger.
  final pulumi.Input<FunctionsScaleAndConcurrencyHttp>? http;

  /// Creates a new [FunctionsScaleAndConcurrencyTriggers].
  /// [http] Scale and concurrency settings for the HTTP trigger.
  FunctionsScaleAndConcurrencyTriggers({
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
    };
  }

  factory FunctionsScaleAndConcurrencyTriggers.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyTriggers(
      http: map['http'] == null ? null : (FunctionsScaleAndConcurrencyHttp.fromMap((map['http'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

