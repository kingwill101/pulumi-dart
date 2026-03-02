// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an amount of money with its currency type.
class MoneyJobsV4 {
  /// The three-letter currency code defined in ISO 4217.
  final pulumi.Input<String>? currencyCode;
  /// Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  final pulumi.Input<int>? nanos;
  /// The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  final pulumi.Input<String>? units;

  /// Creates a new [MoneyJobsV4].
  /// [currencyCode] The three-letter currency code defined in ISO 4217.
  /// [nanos] Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  /// [units] The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  MoneyJobsV4({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currencyCode': ?currencyCode,
      'nanos': ?nanos,
      'units': ?units,
    };
  }

  factory MoneyJobsV4.fromMap(Map<String, dynamic> map) {
    return MoneyJobsV4(
      currencyCode: map['currencyCode'] == null ? null : (map['currencyCode']! as String).input(),
      nanos: map['nanos'] == null ? null : (map['nanos']! as int).input(),
      units: map['units'] == null ? null : (map['units']! as String).input(),
    );
  }
}

