// ignore_for_file: unused_element, unnecessary_cast


/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse {
  /// The inclusive maximum of the acceptable range.
  final String max;
  /// The inclusive minimum of the acceptable range.
  final String min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRangeResponse({
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
      max: map['max'] as String,
      min: map['min'] as String,
    );
  }
}

