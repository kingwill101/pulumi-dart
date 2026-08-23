// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig {
  /// Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  final pulumi.Input<double> confidenceThreshold;
  /// Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  final pulumi.Input<int> expirationSec;
  /// Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  final pulumi.Input<double> impactedBaselineThreshold;
  /// Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  final pulumi.Input<double> loadThreshold;

  /// Creates a new [GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig].
  /// [confidenceThreshold] Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  /// [expirationSec] Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  /// [impactedBaselineThreshold] Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  /// [loadThreshold] Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  const GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
    required this.confidenceThreshold,
    required this.expirationSec,
    required this.impactedBaselineThreshold,
    required this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': confidenceThreshold,
      'expirationSec': expirationSec,
      'impactedBaselineThreshold': impactedBaselineThreshold,
      'loadThreshold': loadThreshold,
    };
  }

  factory GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig(
      confidenceThreshold: pulumi.Input.fromValue(map['confidenceThreshold'] as double),
      expirationSec: pulumi.Input.fromValue(map['expirationSec'] as int),
      impactedBaselineThreshold: pulumi.Input.fromValue(map['impactedBaselineThreshold'] as double),
      loadThreshold: pulumi.Input.fromValue(map['loadThreshold'] as double),
    );
  }
}
