// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig {
  /// Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  final pulumi.Input<double>? confidenceThreshold;
  /// Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  final pulumi.Input<int>? expirationSec;
  /// Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  final pulumi.Input<double>? impactedBaselineThreshold;
  /// Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  final pulumi.Input<double>? loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig].
  /// [confidenceThreshold] Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  /// [expirationSec] Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  /// [impactedBaselineThreshold] Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  /// [loadThreshold] Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
    this.confidenceThreshold,
    this.expirationSec,
    this.impactedBaselineThreshold,
    this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': ?confidenceThreshold,
      'expirationSec': ?expirationSec,
      'impactedBaselineThreshold': ?impactedBaselineThreshold,
      'loadThreshold': ?loadThreshold,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig(
      confidenceThreshold: map['confidenceThreshold'] == null ? null : (map['confidenceThreshold']! as double).input(),
      expirationSec: map['expirationSec'] == null ? null : (map['expirationSec']! as int).input(),
      impactedBaselineThreshold: map['impactedBaselineThreshold'] == null ? null : (map['impactedBaselineThreshold']! as double).input(),
      loadThreshold: map['loadThreshold'] == null ? null : (map['loadThreshold']! as double).input(),
    );
  }
}

