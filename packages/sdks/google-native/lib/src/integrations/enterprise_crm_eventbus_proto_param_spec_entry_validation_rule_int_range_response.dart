// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse {
  /// The inclusive maximum of the acceptable range.
  final pulumi.Input<String> max;
  /// The inclusive minimum of the acceptable range.
  final pulumi.Input<String> min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  const EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse(
      max: pulumi.Input.fromValue(map['max'] as String),
      min: pulumi.Input.fromValue(map['min'] as String),
    );
  }
}

