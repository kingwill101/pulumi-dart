// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_entry_type.dart';
import 'compensation_entry_unit.dart';
import 'compensation_range.dart';
import 'money.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntry {
  /// Optional. Compensation amount.
  final pulumi.Input<Money>? amount;
  /// Optional. Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final pulumi.Input<String>? description;
  /// Optional. Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final pulumi.Input<double>? expectedUnitsPerYear;
  /// Optional. Compensation range.
  final pulumi.Input<CompensationRange>? range;
  /// Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  final pulumi.Input<CompensationEntryType>? type;
  /// Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final pulumi.Input<CompensationEntryUnit>? unit;

  /// Creates a new [CompensationEntry].
  /// [amount] Optional. Compensation amount.
  /// [description] Optional. Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  /// [expectedUnitsPerYear] Optional. Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  /// [range] Optional. Compensation range.
  /// [type] Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  /// [unit] Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  CompensationEntry({
    this.amount,
    this.description,
    this.expectedUnitsPerYear,
    this.range,
    this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?pulumi.Input.mapOptionalInputValue<Money, Map<String, dynamic>>(amount, (value) => value.toMap()),
      'description': ?description,
      'expectedUnitsPerYear': ?expectedUnitsPerYear,
      'range': ?pulumi.Input.mapOptionalInputValue<CompensationRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<CompensationEntryType, String>(type, (value) => value.value),
      'unit': ?pulumi.Input.mapOptionalInputValue<CompensationEntryUnit, String>(unit, (value) => value.value),
    };
  }

  factory CompensationEntry.fromMap(Map<String, dynamic> map) {
    return CompensationEntry(
      amount: map['amount'] == null ? null : (Money.fromMap((map['amount'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expectedUnitsPerYear: map['expectedUnitsPerYear'] == null ? null : (map['expectedUnitsPerYear'] as double).input(),
      range: map['range'] == null ? null : (CompensationRange.fromMap((map['range'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (CompensationEntryType.fromValue(map['type'] as String)).input(),
      unit: map['unit'] == null ? null : (CompensationEntryUnit.fromValue(map['unit'] as String)).input(),
    );
  }
}

