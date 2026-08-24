// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_server_auth_config_summary_config.dart';
import 'get_zero_trust_access_ai_controls_mcp_server_auth_config_summary_registration_info.dart';

class GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary {
  /// Available values: "dcr", "manual".
  final pulumi.Input<String> authMode;
  final pulumi.Input<double> clientSecretVersion;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig> config;
  final pulumi.Input<bool> hasClientSecret;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo> registrationInfo;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary].
  /// [authMode] Available values: "dcr", "manual".
  /// [clientSecretVersion] Required.
  /// [config] Required.
  /// [hasClientSecret] Required.
  /// [registrationInfo] Required.
  const GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary({
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
      'config': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'hasClientSecret': hasClientSecret,
      'registrationInfo': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo, Map<String, dynamic>>(registrationInfo, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      clientSecretVersion: pulumi.Input.fromValue((map['clientSecretVersion'] as num).toDouble()),
      config: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      hasClientSecret: pulumi.Input.fromValue(map['hasClientSecret'] as bool),
      registrationInfo: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo.fromMap((map['registrationInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
