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
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange({
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
      max: map['max'] == null ? null : (map['max'] as String).input(),
      min: map['min'] == null ? null : (map['min'] as String).input(),
    );
  }
}

