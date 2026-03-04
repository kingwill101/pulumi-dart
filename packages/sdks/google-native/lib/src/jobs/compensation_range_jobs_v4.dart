// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'money_jobs_v4.dart';

/// Compensation range.
class CompensationRangeJobsV4 {
  /// The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final pulumi.Input<MoneyJobsV4>? maxCompensation;

  /// The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final pulumi.Input<MoneyJobsV4>? minCompensation;

  /// Creates a new [CompensationRangeJobsV4].
  /// [maxCompensation] The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  /// [minCompensation] The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  CompensationRangeJobsV4({this.maxCompensation, this.minCompensation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCompensation':
          ?pulumi.Input.mapOptionalInputValue<
            MoneyJobsV4,
            Map<String, dynamic>
          >(maxCompensation, (value) => value.toMap()),
      'minCompensation':
          ?pulumi.Input.mapOptionalInputValue<
            MoneyJobsV4,
            Map<String, dynamic>
          >(minCompensation, (value) => value.toMap()),
    };
  }

  factory CompensationRangeJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationRangeJobsV4(
      maxCompensation: (() {
        final guardedValue = map['maxCompensation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MoneyJobsV4.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      minCompensation: (() {
        final guardedValue = map['minCompensation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MoneyJobsV4.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
