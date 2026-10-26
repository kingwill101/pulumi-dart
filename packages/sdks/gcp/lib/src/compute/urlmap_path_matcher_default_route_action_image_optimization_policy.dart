// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherDefaultRouteActionImageOptimizationPolicy {
  /// Controls whether presets or control parameters specified as URL query
  /// parameters are used to optimize the image. If not specified, the default
  /// value is DISABLED.
  /// Possible values are: `DISABLED`, `ENABLED`.
  final pulumi.Input<String?>? queryParameterInterpretation;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionImageOptimizationPolicy].
  /// [queryParameterInterpretation] Controls whether presets or control parameters specified as URL query
  const URLMapPathMatcherDefaultRouteActionImageOptimizationPolicy({
    this.queryParameterInterpretation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParameterInterpretation': ?queryParameterInterpretation,
    };
  }

  factory URLMapPathMatcherDefaultRouteActionImageOptimizationPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultRouteActionImageOptimizationPolicy(
      queryParameterInterpretation: (() { final guardedValue = map['queryParameterInterpretation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
