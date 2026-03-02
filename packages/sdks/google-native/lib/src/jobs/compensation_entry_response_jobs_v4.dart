// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_range_response_jobs_v4.dart';
import 'money_response_jobs_v4.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntryResponseJobsV4 {
  /// Compensation amount.
  final pulumi.Input<MoneyResponseJobsV4> amount;
  /// Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final pulumi.Input<String> description;
  /// Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final pulumi.Input<double> expectedUnitsPerYear;
  /// Compensation range.
  final pulumi.Input<CompensationRangeResponseJobsV4> range;
  /// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  final pulumi.Input<String> type;
  /// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final pulumi.Input<String> unit;

  /// Creates a new [CompensationEntryResponseJobsV4].
  /// [amount] Compensation amount.
  /// [description] Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  /// [expectedUnitsPerYear] Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  /// [range] Compensation range.
  /// [type] Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  /// [unit] Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  CompensationEntryResponseJobsV4({
    required this.amount,
    required this.description,
    required this.expectedUnitsPerYear,
    required this.range,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': pulumi.Input.mapInputValue<MoneyResponseJobsV4, Map<String, dynamic>>(amount, (value) => value.toMap()),
      'description': description,
      'expectedUnitsPerYear': expectedUnitsPerYear,
      'range': pulumi.Input.mapInputValue<CompensationRangeResponseJobsV4, Map<String, dynamic>>(range, (value) => value.toMap()),
      'type': type,
      'unit': unit,
    };
  }

  factory CompensationEntryResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationEntryResponseJobsV4(
      amount: (MoneyResponseJobsV4.fromMap((map['amount'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      expectedUnitsPerYear: (map['expectedUnitsPerYear'] as double).input(),
      range: (CompensationRangeResponseJobsV4.fromMap((map['range'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      unit: (map['unit'] as String).input(),
    );
  }
}

