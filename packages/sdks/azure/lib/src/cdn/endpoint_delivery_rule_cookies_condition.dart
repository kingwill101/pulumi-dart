// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleCookiesCondition {
  /// List of values for the cookie. This is required if `operator` is not `Any`.
  final List<String>? matchValues;
  /// Defaults to `false`.
  final bool? negateCondition;
  /// Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  final String operator;
  /// Name of the cookie.
  final String selector;
  /// A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  final List<String>? transforms;

  /// Creates a new [EndpointDeliveryRuleCookiesCondition].
  /// [matchValues] List of values for the cookie. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  /// [selector] Name of the cookie.
  /// [transforms] A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  EndpointDeliveryRuleCookiesCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.selector,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': selector,
      'transforms': ?transforms,
    };
  }

  factory EndpointDeliveryRuleCookiesCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleCookiesCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      selector: map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

