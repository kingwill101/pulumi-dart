// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_server_auth_config_summary_config.dart';
import 'zero_trust_access_ai_controls_mcp_server_auth_config_summary_registration_info.dart';

class ZeroTrustAccessAiControlsMcpServerAuthConfigSummary {
  /// Available values: "dcr", "manual".
  final pulumi.Input<String?>? authMode;
  final pulumi.Input<double?>? clientSecretVersion;
  final pulumi.Input<ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig?>? config;
  final pulumi.Input<bool?>? hasClientSecret;
  final pulumi.Input<ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo?>? registrationInfo;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerAuthConfigSummary].
  /// [authMode] Available values: "dcr", "manual".
  /// [clientSecretVersion] Optional.
  /// [config] Optional.
  /// [hasClientSecret] Optional.
  /// [registrationInfo] Optional.
  const ZeroTrustAccessAiControlsMcpServerAuthConfigSummary({
    this.authMode,
    this.clientSecretVersion,
    this.config,
    this.hasClientSecret,
    this.registrationInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'clientSecretVersion': ?clientSecretVersion,
      'config': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'hasClientSecret': ?hasClientSecret,
      'registrationInfo': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo, Map<String, dynamic>>(registrationInfo, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerAuthConfigSummary(
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretVersion: (() { final guardedValue = map['clientSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hasClientSecret: (() { final guardedValue = map['hasClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationInfo: (() { final guardedValue = map['registrationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
