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
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange({
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
      max: map['max'] == null ? null : (map['max']! as double).input(),
      min: map['min'] == null ? null : (map['min']! as double).input(),
    );
  }
}

