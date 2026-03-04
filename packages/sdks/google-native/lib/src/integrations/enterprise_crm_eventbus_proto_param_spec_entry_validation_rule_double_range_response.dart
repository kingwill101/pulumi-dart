// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Range used to validate doubles and floats.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse {
  /// The inclusive maximum of the acceptable range.
  final pulumi.Input<double> max;

  /// The inclusive minimum of the acceptable range.
  final pulumi.Input<double> min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRangeResponse(
      max: pulumi.Input.fromValue(map['max'] as double),
      min: pulumi.Input.fromValue(map['min'] as double),
    );
  }
}
