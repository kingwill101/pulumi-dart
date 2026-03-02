// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'money.dart';

/// Compensation range.
class CompensationRange {
  /// Optional. The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final pulumi.Input<Money>? maxCompensation;
  /// Optional. The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final pulumi.Input<Money>? minCompensation;

  /// Creates a new [CompensationRange].
  /// [maxCompensation] Optional. The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  /// [minCompensation] Optional. The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  CompensationRange({
    this.maxCompensation,
    this.minCompensation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCompensation': ?pulumi.Input.mapOptionalInputValue<Money, Map<String, dynamic>>(maxCompensation, (value) => value.toMap()),
      'minCompensation': ?pulumi.Input.mapOptionalInputValue<Money, Map<String, dynamic>>(minCompensation, (value) => value.toMap()),
    };
  }

  factory CompensationRange.fromMap(Map<String, dynamic> map) {
    return CompensationRange(
      maxCompensation: map['maxCompensation'] == null ? null : (Money.fromMap((map['maxCompensation'] as Map).cast<String, dynamic>())).input(),
      minCompensation: map['minCompensation'] == null ? null : (Money.fromMap((map['minCompensation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

