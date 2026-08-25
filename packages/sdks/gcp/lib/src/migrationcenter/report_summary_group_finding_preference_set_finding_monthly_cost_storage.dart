// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage {
  /// (Output)
  /// The three-letter currency code defined in ISO 4217.
  final pulumi.Input<String?>? currencyCode;
  /// (Output)
  /// Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999 inclusive.
  /// If `units` is positive, `nanos` must be positive or zero.
  /// If `units` is zero, `nanos` can be positive, zero, or negative.
  /// If `units` is negative, `nanos` must be negative or zero.
  /// For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  final pulumi.Input<int?>? nanos;
  /// (Output)
  /// The whole units of the amount.
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  final pulumi.Input<String?>? units;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage].
  /// [currencyCode] (Output)
  /// [nanos] (Output)
  /// [units] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage({
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

  factory ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage(
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      units: (() { final guardedValue = map['units']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
