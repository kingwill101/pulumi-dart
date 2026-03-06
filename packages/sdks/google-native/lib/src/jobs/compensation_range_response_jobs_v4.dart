// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'money_response_jobs_v4.dart';

/// Compensation range.
class CompensationRangeResponseJobsV4 {
  /// The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final pulumi.Input<MoneyResponseJobsV4> maxCompensation;
  /// The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final pulumi.Input<MoneyResponseJobsV4> minCompensation;

  /// Creates a new [CompensationRangeResponseJobsV4].
  /// [maxCompensation] The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  /// [minCompensation] The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  const CompensationRangeResponseJobsV4({
    required this.maxCompensation,
    required this.minCompensation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCompensation': pulumi.Input.mapInputValue<MoneyResponseJobsV4, Map<String, dynamic>>(maxCompensation, (value) => value.toMap()),
      'minCompensation': pulumi.Input.mapInputValue<MoneyResponseJobsV4, Map<String, dynamic>>(minCompensation, (value) => value.toMap()),
    };
  }

  factory CompensationRangeResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationRangeResponseJobsV4(
      maxCompensation: pulumi.Input.fromValue(MoneyResponseJobsV4.fromMap((map['maxCompensation']! as Map).cast<String, dynamic>())),
      minCompensation: pulumi.Input.fromValue(MoneyResponseJobsV4.fromMap((map['minCompensation']! as Map).cast<String, dynamic>())),
    );
  }
}

