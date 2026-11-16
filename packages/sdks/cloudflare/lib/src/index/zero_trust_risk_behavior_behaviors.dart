// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustRiskBehaviorBehaviors {
  final pulumi.Input<bool> enabled;
  /// Available values: "info", "low", "medium", "high".
  final pulumi.Input<String> riskLevel;

  /// Creates a new [ZeroTrustRiskBehaviorBehaviors].
  /// [enabled] Required.
  /// [riskLevel] Available values: "info", "low", "medium", "high".
  const ZeroTrustRiskBehaviorBehaviors({
    required this.enabled,
    required this.riskLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'riskLevel': riskLevel,
    };
  }

  factory ZeroTrustRiskBehaviorBehaviors.fromMap(Map<String, dynamic> map) {
    return ZeroTrustRiskBehaviorBehaviors(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as String),
    );
  }
}
