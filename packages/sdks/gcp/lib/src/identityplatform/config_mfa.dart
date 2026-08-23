// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_mfa_provider_config.dart';

class ConfigMfa {
  /// A list of usable second factors for this project.
  /// Each value may be one of: `PHONE_SMS`.
  final pulumi.Input<List<String>>? enabledProviders;
  /// A list of usable second factors for this project along with their configurations.
  /// This field does not support phone based MFA, for that use the 'enabledProviders' field.
  /// Structure is documented below.
  final pulumi.Input<List<ConfigMfaProviderConfig>>? providerConfigs;
  /// Whether MultiFactor Authentication has been enabled for this project.
  /// Possible values are: `DISABLED`, `ENABLED`, `MANDATORY`.
  final pulumi.Input<String>? state;

  /// Creates a new [ConfigMfa].
  /// [enabledProviders] A list of usable second factors for this project.
  /// [providerConfigs] A list of usable second factors for this project along with their configurations.
  /// [state] Whether MultiFactor Authentication has been enabled for this project.
  const ConfigMfa({
    this.enabledProviders,
    this.providerConfigs,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledProviders': ?enabledProviders,
      'providerConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConfigMfaProviderConfig>, List<Map<String, dynamic>>>(providerConfigs, (value) => pulumi.Input.encodeList<ConfigMfaProviderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory ConfigMfa.fromMap(Map<String, dynamic> map) {
    return ConfigMfa(
      enabledProviders: (() { final guardedValue = map['enabledProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      providerConfigs: (() { final guardedValue = map['providerConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigMfaProviderConfig>(guardedValue, (value) => ConfigMfaProviderConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
