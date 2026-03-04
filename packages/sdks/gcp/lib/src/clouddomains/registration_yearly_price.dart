// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistrationYearlyPrice {
  /// The three-letter currency code defined in ISO 4217.
  final pulumi.Input<String>? currencyCode;

  /// The whole units of the amount. For example if currencyCode is "USD", then 1 unit is one US dollar.
  final pulumi.Input<String>? units;

  /// Creates a new [RegistrationYearlyPrice].
  /// [currencyCode] The three-letter currency code defined in ISO 4217.
  /// [units] The whole units of the amount. For example if currencyCode is "USD", then 1 unit is one US dollar.
  RegistrationYearlyPrice({this.currencyCode, this.units});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'currencyCode': ?currencyCode, 'units': ?units};
  }

  factory RegistrationYearlyPrice.fromMap(Map<String, dynamic> map) {
    return RegistrationYearlyPrice(
      currencyCode: (() {
        final guardedValue = map['currencyCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      units: (() {
        final guardedValue = map['units'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
