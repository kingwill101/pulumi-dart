// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1 {
  final pulumi.Input<double?>? autoDeployConfidenceThreshold;
  final pulumi.Input<int?>? autoDeployExpirationSec;
  final pulumi.Input<double?>? autoDeployImpactedBaselineThreshold;
  final pulumi.Input<double?>? autoDeployLoadThreshold;
  /// The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  final pulumi.Input<String?>? name;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1].
  /// [autoDeployConfidenceThreshold] Optional.
  /// [autoDeployExpirationSec] Optional.
  /// [autoDeployImpactedBaselineThreshold] Optional.
  /// [autoDeployLoadThreshold] Optional.
  /// [name] The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  const SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1({
    this.autoDeployConfidenceThreshold,
    this.autoDeployExpirationSec,
    this.autoDeployImpactedBaselineThreshold,
    this.autoDeployLoadThreshold,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfidenceThreshold': ?autoDeployConfidenceThreshold,
      'autoDeployExpirationSec': ?autoDeployExpirationSec,
      'autoDeployImpactedBaselineThreshold': ?autoDeployImpactedBaselineThreshold,
      'autoDeployLoadThreshold': ?autoDeployLoadThreshold,
      'name': ?name,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1(
      autoDeployConfidenceThreshold: (() { final guardedValue = map['autoDeployConfidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      autoDeployExpirationSec: (() { final guardedValue = map['autoDeployExpirationSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      autoDeployImpactedBaselineThreshold: (() { final guardedValue = map['autoDeployImpactedBaselineThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      autoDeployLoadThreshold: (() { final guardedValue = map['autoDeployLoadThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
