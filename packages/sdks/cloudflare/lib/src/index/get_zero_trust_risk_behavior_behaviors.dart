// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustRiskBehaviorBehaviors {
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> name;
  /// Available values: "low", "medium", "high".
  final pulumi.Input<String> riskLevel;

  /// Creates a new [GetZeroTrustRiskBehaviorBehaviors].
  /// [description] Required.
  /// [enabled] Required.
  /// [name] Required.
  /// [riskLevel] Available values: "low", "medium", "high".
  const GetZeroTrustRiskBehaviorBehaviors({
    required this.description,
    required this.enabled,
    required this.name,
    required this.riskLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'name': name,
      'riskLevel': riskLevel,
    };
  }

  factory GetZeroTrustRiskBehaviorBehaviors.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskBehaviorBehaviors(
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as String),
    );
  }
}
