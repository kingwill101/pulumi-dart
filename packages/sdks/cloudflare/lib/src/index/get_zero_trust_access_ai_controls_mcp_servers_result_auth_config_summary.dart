// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_servers_result_auth_config_summary_config.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_auth_config_summary_registration_info.dart';

class GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary {
  /// Available values: "dcr", "manual".
  final pulumi.Input<String> authMode;
  final pulumi.Input<double> clientSecretVersion;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummaryConfig> config;
  final pulumi.Input<bool> hasClientSecret;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummaryRegistrationInfo> registrationInfo;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary].
  /// [authMode] Available values: "dcr", "manual".
  /// [clientSecretVersion] Required.
  /// [config] Required.
  /// [hasClientSecret] Required.
  /// [registrationInfo] Required.
  const GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary({
    required this.authMode,
    required this.clientSecretVersion,
    required this.config,
    required this.hasClientSecret,
    required this.registrationInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'clientSecretVersion': clientSecretVersion,
      'config': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummaryConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'hasClientSecret': hasClientSecret,
      'registrationInfo': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummaryRegistrationInfo, Map<String, dynamic>>(registrationInfo, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      clientSecretVersion: pulumi.Input.fromValue((map['clientSecretVersion'] as num).toDouble()),
      config: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummaryConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      hasClientSecret: pulumi.Input.fromValue(map['hasClientSecret'] as bool),
      registrationInfo: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummaryRegistrationInfo.fromMap((map['registrationInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
