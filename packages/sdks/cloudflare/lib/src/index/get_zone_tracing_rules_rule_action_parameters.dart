// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneTracingRulesRuleActionParameters {
  /// The ratio of requests sampled for tracing, from 0 to 1.
  final pulumi.Input<double> samplingRatio;

  /// Creates a new [GetZoneTracingRulesRuleActionParameters].
  /// [samplingRatio] The ratio of requests sampled for tracing, from 0 to 1.
  const GetZoneTracingRulesRuleActionParameters({
    required this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingRatio': samplingRatio,
    };
  }

  factory GetZoneTracingRulesRuleActionParameters.fromMap(Map<String, dynamic> map) {
    return GetZoneTracingRulesRuleActionParameters(
      samplingRatio: pulumi.Input.fromValue((map['samplingRatio'] as num).toDouble()),
    );
  }
}
