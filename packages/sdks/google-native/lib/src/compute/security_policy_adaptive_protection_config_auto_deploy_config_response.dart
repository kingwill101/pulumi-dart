// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse {
  final pulumi.Input<double> confidenceThreshold;
  final pulumi.Input<int> expirationSec;
  final pulumi.Input<double> impactedBaselineThreshold;
  final pulumi.Input<double> loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse].
  /// [confidenceThreshold] Required.
  /// [expirationSec] Required.
  /// [impactedBaselineThreshold] Required.
  /// [loadThreshold] Required.
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse({
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

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse(
      confidenceThreshold: (map['confidenceThreshold'] as double).input(),
      expirationSec: (map['expirationSec'] as int).input(),
      impactedBaselineThreshold: (map['impactedBaselineThreshold'] as double).input(),
      loadThreshold: (map['loadThreshold'] as double).input(),
    );
  }
}

