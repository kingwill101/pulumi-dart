// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptBindingSimple {
  /// The rate limit value.
  final pulumi.Input<double> limit;
  /// Duration in seconds to apply the mitigation action after the rate limit is exceeded. Valid values are 0 (disabled), 10, or multiples of 60 up to 86400. Must be greater than or equal to the period when non-zero.
  final pulumi.Input<int?>? mitigationTimeout;
  /// The rate limit period in seconds.
  final pulumi.Input<int> period;

  /// Creates a new [WorkersScriptBindingSimple].
  /// [limit] The rate limit value.
  /// [mitigationTimeout] Duration in seconds to apply the mitigation action after the rate limit is exceeded. Valid values are 0 (disabled), 10, or multiples of 60 up to 86400. Must be greater than or equal to the period when non-zero.
  /// [period] The rate limit period in seconds.
  const WorkersScriptBindingSimple({
    required this.limit,
    this.mitigationTimeout,
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': limit,
      'mitigationTimeout': ?mitigationTimeout,
      'period': period,
    };
  }

  factory WorkersScriptBindingSimple.fromMap(Map<String, dynamic> map) {
    return WorkersScriptBindingSimple(
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      mitigationTimeout: (() { final guardedValue = map['mitigationTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      period: pulumi.Input.fromValue((map['period'] as num).toInt()),
    );
  }
}
