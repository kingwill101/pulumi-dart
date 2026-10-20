// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneTracingRulesRuleActionParameters {
  /// The ratio of requests sampled for tracing, from 0 to 1.
  final pulumi.Input<double> samplingRatio;

  /// Creates a new [ZoneTracingRulesRuleActionParameters].
  /// [samplingRatio] The ratio of requests sampled for tracing, from 0 to 1.
  const ZoneTracingRulesRuleActionParameters({
    required this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingRatio': samplingRatio,
    };
  }

  factory ZoneTracingRulesRuleActionParameters.fromMap(Map<String, dynamic> map) {
    return ZoneTracingRulesRuleActionParameters(
      samplingRatio: pulumi.Input.fromValue((map['samplingRatio'] as num).toDouble()),
    );
  }
}
