// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDlpPolicy {
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> action;
  final pulumi.Input<List<String>> checks;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;
  final pulumi.Input<List<String>> profiles;

  /// Creates a new [GetAiGatewayDlpPolicy].
  /// [action] Available values: "FLAG", "BLOCK".
  /// [checks] Required.
  /// [enabled] Required.
  /// [id] Required.
  /// [profiles] Required.
  const GetAiGatewayDlpPolicy({
    required this.action,
    required this.checks,
    required this.enabled,
    required this.id,
    required this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'checks': checks,
      'enabled': enabled,
      'id': id,
      'profiles': profiles,
    };
  }

  factory GetAiGatewayDlpPolicy.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDlpPolicy(
      action: pulumi.Input.fromValue(map['action'] as String),
      checks: pulumi.Input.fromValue((map['checks'] as List).cast<String>()),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      profiles: pulumi.Input.fromValue((map['profiles'] as List).cast<String>()),
    );
  }
}
