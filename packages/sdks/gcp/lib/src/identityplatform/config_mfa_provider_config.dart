// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_mfa_provider_config_totp_provider_config.dart';

class ConfigMfaProviderConfig {
  /// Whether MultiFactor Authentication has been enabled for this project.
  /// Possible values are: `DISABLED`, `ENABLED`, `MANDATORY`.
  final pulumi.Input<String>? state;
  /// TOTP MFA provider config for this project.
  /// Structure is documented below.
  final pulumi.Input<ConfigMfaProviderConfigTotpProviderConfig>? totpProviderConfig;

  /// Creates a new [ConfigMfaProviderConfig].
  /// [state] Whether MultiFactor Authentication has been enabled for this project.
  /// [totpProviderConfig] TOTP MFA provider config for this project.
  const ConfigMfaProviderConfig({
    this.state,
    this.totpProviderConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'totpProviderConfig': ?pulumi.Input.mapOptionalInputValue<ConfigMfaProviderConfigTotpProviderConfig, Map<String, dynamic>>(totpProviderConfig, (value) => value.toMap()),
    };
  }

  factory ConfigMfaProviderConfig.fromMap(Map<String, dynamic> map) {
    return ConfigMfaProviderConfig(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totpProviderConfig: (() { final guardedValue = map['totpProviderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMfaProviderConfigTotpProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
