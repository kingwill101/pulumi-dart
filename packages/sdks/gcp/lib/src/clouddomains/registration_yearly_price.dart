// ignore_for_file: unused_element, unnecessary_cast


class RegistrationYearlyPrice {
  /// The three-letter currency code defined in ISO 4217.
  final String? currencyCode;
  /// The whole units of the amount. For example if currencyCode is "USD", then 1 unit is one US dollar.
  final String? units;

  /// Creates a new [RegistrationYearlyPrice].
  /// [currencyCode] The three-letter currency code defined in ISO 4217.
  /// [units] The whole units of the amount. For example if currencyCode is "USD", then 1 unit is one US dollar.
  RegistrationYearlyPrice({
    this.currencyCode,
    this.units,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currencyCode': ?currencyCode,
      'units': ?units,
    };
  }

  factory RegistrationYearlyPrice.fromMap(Map<String, dynamic> map) {
    return RegistrationYearlyPrice(
      currencyCode: map['currencyCode'] == null ? null : map['currencyCode'] as String,
      units: map['units'] == null ? null : map['units'] as String,
    );
  }
}

