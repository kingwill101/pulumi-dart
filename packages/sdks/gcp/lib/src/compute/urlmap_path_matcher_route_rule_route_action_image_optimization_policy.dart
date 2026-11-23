// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleRouteActionImageOptimizationPolicy {
  /// Controls whether presets or control parameters specified as URL query
  /// parameters are used to optimize the image. If not specified, the default
  /// value is DISABLED.
  /// Possible values are: `DISABLED`, `ENABLED`.
  final pulumi.Input<String?>? queryParameterInterpretation;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionImageOptimizationPolicy].
  /// [queryParameterInterpretation] Controls whether presets or control parameters specified as URL query
  const URLMapPathMatcherRouteRuleRouteActionImageOptimizationPolicy({
    this.queryParameterInterpretation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParameterInterpretation': ?queryParameterInterpretation,
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionImageOptimizationPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionImageOptimizationPolicy(
      queryParameterInterpretation: (() { final guardedValue = map['queryParameterInterpretation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
