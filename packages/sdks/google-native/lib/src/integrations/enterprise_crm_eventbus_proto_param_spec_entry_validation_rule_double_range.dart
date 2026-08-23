// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Range used to validate doubles and floats.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange {
  /// The inclusive maximum of the acceptable range.
  final pulumi.Input<double>? max;
  /// The inclusive minimum of the acceptable range.
  final pulumi.Input<double>? min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  const EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
