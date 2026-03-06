// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ramp_up_rule.dart';

/// Routing rules in production experiments.
class Experiments {
  /// List of ramp-up rules.
  final pulumi.Input<List<RampUpRule>>? rampUpRules;

  /// Creates a new [Experiments].
  /// [rampUpRules] List of ramp-up rules.
  const Experiments({
    this.rampUpRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rampUpRules': ?pulumi.Input.mapOptionalInputValue<List<RampUpRule>, List<Map<String, dynamic>>>(rampUpRules, (value) => pulumi.Input.encodeList<RampUpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Experiments.fromMap(Map<String, dynamic> map) {
    return Experiments(
      rampUpRules: (() { final guardedValue = map['rampUpRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RampUpRule>(guardedValue, (value) => RampUpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

