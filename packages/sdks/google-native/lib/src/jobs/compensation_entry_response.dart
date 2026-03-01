// ignore_for_file: unused_element, unnecessary_cast

import 'compensation_range_response.dart';
import 'money_response.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntryResponse {
  /// Optional. Compensation amount.
  final MoneyResponse amount;
  /// Optional. Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final String description;
  /// Optional. Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final double expectedUnitsPerYear;
  /// Optional. Compensation range.
  final CompensationRangeResponse range;
  /// Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  final String type;
  /// Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final String unit;

  /// Creates a new [CompensationEntryResponse].
  /// [amount] Optional. Compensation amount.
  /// [description] Optional. Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  /// [expectedUnitsPerYear] Optional. Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  /// [range] Optional. Compensation range.
  /// [type] Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  /// [unit] Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  CompensationEntryResponse({
    required this.amount,
    required this.description,
    required this.expectedUnitsPerYear,
    required this.range,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount.toMap(),
      'description': description,
      'expectedUnitsPerYear': expectedUnitsPerYear,
      'range': range.toMap(),
      'type': type,
      'unit': unit,
    };
  }

  factory CompensationEntryResponse.fromMap(Map<String, dynamic> map) {
    return CompensationEntryResponse(
      amount: MoneyResponse.fromMap((map['amount'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      expectedUnitsPerYear: map['expectedUnitsPerYear'] as double,
      range: CompensationRangeResponse.fromMap((map['range'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      unit: map['unit'] as String,
    );
  }
}

