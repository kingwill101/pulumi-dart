// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portals_result_server_auth_config_summary_config.dart';
import 'get_zero_trust_access_ai_controls_mcp_portals_result_server_auth_config_summary_registration_info.dart';

class GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummary {
  /// Available values: "dcr", "manual".
  final pulumi.Input<String> authMode;
  final pulumi.Input<double> clientSecretVersion;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummaryConfig> config;
  final pulumi.Input<bool> hasClientSecret;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummaryRegistrationInfo> registrationInfo;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummary].
  /// [authMode] Available values: "dcr", "manual".
  /// [clientSecretVersion] Required.
  /// [config] Required.
  /// [hasClientSecret] Required.
  /// [registrationInfo] Required.
  const GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummary({
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
      'config': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummaryConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'hasClientSecret': hasClientSecret,
      'registrationInfo': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummaryRegistrationInfo, Map<String, dynamic>>(registrationInfo, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummary.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummary(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      clientSecretVersion: pulumi.Input.fromValue((map['clientSecretVersion'] as num).toDouble()),
      config: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummaryConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      hasClientSecret: pulumi.Input.fromValue(map['hasClientSecret'] as bool),
      registrationInfo: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpPortalsResultServerAuthConfigSummaryRegistrationInfo.fromMap((map['registrationInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
