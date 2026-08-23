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
  const SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
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
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      expirationSec: (() { final guardedValue = map['expirationSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      impactedBaselineThreshold: (() { final guardedValue = map['impactedBaselineThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      loadThreshold: (() { final guardedValue = map['loadThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
