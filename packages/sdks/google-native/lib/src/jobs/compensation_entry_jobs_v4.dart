// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_entry_type_jobs_v4.dart';
import 'compensation_entry_unit_jobs_v4.dart';
import 'compensation_range_jobs_v4.dart';
import 'money_jobs_v4.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntryJobsV4 {
  /// Compensation amount.
  final pulumi.Input<MoneyJobsV4>? amount;

  /// Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final pulumi.Input<String>? description;

  /// Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final pulumi.Input<double>? expectedUnitsPerYear;

  /// Compensation range.
  final pulumi.Input<CompensationRangeJobsV4>? range;

  /// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  final pulumi.Input<CompensationEntryTypeJobsV4>? type;

  /// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final pulumi.Input<CompensationEntryUnitJobsV4>? unit;

  /// Creates a new [CompensationEntryJobsV4].
  /// [amount] Compensation amount.
  /// [description] Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  /// [expectedUnitsPerYear] Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  /// [range] Compensation range.
  /// [type] Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  /// [unit] Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  CompensationEntryJobsV4({
    this.amount,
    this.description,
    this.expectedUnitsPerYear,
    this.range,
    this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount':
          ?pulumi.Input.mapOptionalInputValue<
            MoneyJobsV4,
            Map<String, dynamic>
          >(amount, (value) => value.toMap()),
      'description': ?description,
      'expectedUnitsPerYear': ?expectedUnitsPerYear,
      'range':
          ?pulumi.Input.mapOptionalInputValue<
            CompensationRangeJobsV4,
            Map<String, dynamic>
          >(range, (value) => value.toMap()),
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            CompensationEntryTypeJobsV4,
            String
          >(type, (value) => value.wireValue),
      'unit':
          ?pulumi.Input.mapOptionalInputValue<
            CompensationEntryUnitJobsV4,
            String
          >(unit, (value) => value.wireValue),
    };
  }

  factory CompensationEntryJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationEntryJobsV4(
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MoneyJobsV4.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expectedUnitsPerYear: (() {
        final guardedValue = map['expectedUnitsPerYear'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      range: (() {
        final guardedValue = map['range'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompensationRangeJobsV4.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompensationEntryTypeJobsV4.fromValue(guardedValue as String),
        );
      })(),
      unit: (() {
        final guardedValue = map['unit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompensationEntryUnitJobsV4.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
