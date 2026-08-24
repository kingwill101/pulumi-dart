// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dlp_policy.dart';

class AiGatewayDlp {
  /// Available values: "BLOCK", "FLAG".
  final pulumi.Input<String?>? action;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<AiGatewayDlpPolicy>?>? policies;
  final pulumi.Input<List<String>?>? profiles;

  /// Creates a new [AiGatewayDlp].
  /// [action] Available values: "BLOCK", "FLAG".
  /// [enabled] Required.
  /// [policies] Optional.
  /// [profiles] Optional.
  const AiGatewayDlp({
    this.action,
    required this.enabled,
    this.policies,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': enabled,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AiGatewayDlpPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AiGatewayDlpPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profiles': ?profiles,
    };
  }

  factory AiGatewayDlp.fromMap(Map<String, dynamic> map) {
    return AiGatewayDlp(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayDlpPolicy>(guardedValue, (value) => AiGatewayDlpPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
