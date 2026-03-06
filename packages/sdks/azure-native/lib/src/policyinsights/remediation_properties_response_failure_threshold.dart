// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The remediation failure threshold settings
class RemediationPropertiesResponseFailureThreshold {
  /// A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  final pulumi.Input<double>? percentage;

  /// Creates a new [RemediationPropertiesResponseFailureThreshold].
  /// [percentage] A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  const RemediationPropertiesResponseFailureThreshold({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
    };
  }

  factory RemediationPropertiesResponseFailureThreshold.fromMap(Map<String, dynamic> map) {
    return RemediationPropertiesResponseFailureThreshold(
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

