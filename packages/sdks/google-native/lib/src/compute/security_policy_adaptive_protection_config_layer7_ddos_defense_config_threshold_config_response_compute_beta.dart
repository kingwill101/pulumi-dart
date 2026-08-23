// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta {
  final pulumi.Input<double> autoDeployConfidenceThreshold;
  final pulumi.Input<int> autoDeployExpirationSec;
  final pulumi.Input<double> autoDeployImpactedBaselineThreshold;
  final pulumi.Input<double> autoDeployLoadThreshold;
  /// The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  final pulumi.Input<String> name;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta].
  /// [autoDeployConfidenceThreshold] Required.
  /// [autoDeployExpirationSec] Required.
  /// [autoDeployImpactedBaselineThreshold] Required.
  /// [autoDeployLoadThreshold] Required.
  /// [name] The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  const SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta({
    required this.autoDeployConfidenceThreshold,
    required this.autoDeployExpirationSec,
    required this.autoDeployImpactedBaselineThreshold,
    required this.autoDeployLoadThreshold,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfidenceThreshold': autoDeployConfidenceThreshold,
      'autoDeployExpirationSec': autoDeployExpirationSec,
      'autoDeployImpactedBaselineThreshold': autoDeployImpactedBaselineThreshold,
      'autoDeployLoadThreshold': autoDeployLoadThreshold,
      'name': name,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta(
      autoDeployConfidenceThreshold: pulumi.Input.fromValue(map['autoDeployConfidenceThreshold'] as double),
      autoDeployExpirationSec: pulumi.Input.fromValue(map['autoDeployExpirationSec'] as int),
      autoDeployImpactedBaselineThreshold: pulumi.Input.fromValue(map['autoDeployImpactedBaselineThreshold'] as double),
      autoDeployLoadThreshold: pulumi.Input.fromValue(map['autoDeployLoadThreshold'] as double),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
