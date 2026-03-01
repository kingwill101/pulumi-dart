// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleHttpVersionCondition {
  /// Valid values are `0.9`, `1.0`, `1.1` and `2.0`.
  final List<String> matchValues;
  /// Defaults to `false`.
  final bool? negateCondition;
  /// Valid values are `Equal`. Defaults to `Equal`.
  final String? operator;

  /// Creates a new [EndpointDeliveryRuleHttpVersionCondition].
  /// [matchValues] Valid values are `0.9`, `1.0`, `1.1` and `2.0`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Equal`. Defaults to `Equal`.
  EndpointDeliveryRuleHttpVersionCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'negateCondition': ?negateCondition,
      'operator': ?operator,
    };
  }

  factory EndpointDeliveryRuleHttpVersionCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleHttpVersionCondition(
      matchValues: (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] == null ? null : map['operator'] as String,
    );
  }
}

