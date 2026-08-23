// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange {
  /// The inclusive maximum of the acceptable range.
  final pulumi.Input<String>? max;
  /// The inclusive minimum of the acceptable range.
  final pulumi.Input<String>? min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  const EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
