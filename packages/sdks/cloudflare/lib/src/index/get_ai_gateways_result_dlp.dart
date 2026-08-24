// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateways_result_dlp_policy.dart';

class GetAiGatewaysResultDlp {
  /// Available values: "BLOCK", "FLAG".
  final pulumi.Input<String> action;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<GetAiGatewaysResultDlpPolicy>> policies;
  final pulumi.Input<List<String>> profiles;

  /// Creates a new [GetAiGatewaysResultDlp].
  /// [action] Available values: "BLOCK", "FLAG".
  /// [enabled] Required.
  /// [policies] Required.
  /// [profiles] Required.
  const GetAiGatewaysResultDlp({
    required this.action,
    required this.enabled,
    required this.policies,
    required this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': enabled,
      'policies': pulumi.Input.mapInputValue<List<GetAiGatewaysResultDlpPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetAiGatewaysResultDlpPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profiles': profiles,
    };
  }

  factory GetAiGatewaysResultDlp.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultDlp(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiGatewaysResultDlpPolicy>(map['policies']!, (value) => GetAiGatewaysResultDlpPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      profiles: pulumi.Input.fromValue((map['profiles'] as List).cast<String>()),
    );
  }
}
