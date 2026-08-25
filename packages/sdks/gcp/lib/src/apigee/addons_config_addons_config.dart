// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_addons_config_advanced_api_ops_config.dart';
import 'addons_config_addons_config_api_security_config.dart';
import 'addons_config_addons_config_connectors_platform_config.dart';
import 'addons_config_addons_config_integration_config.dart';
import 'addons_config_addons_config_monetization_config.dart';

class AddonsConfigAddonsConfig {
  /// Configuration for the Advanced API Ops add-on.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfigAdvancedApiOpsConfig?>? advancedApiOpsConfig;
  /// Configuration for the API Security add-on.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfigApiSecurityConfig?>? apiSecurityConfig;
  /// Configuration for the Monetization add-on.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfigConnectorsPlatformConfig?>? connectorsPlatformConfig;
  /// Configuration for the Integration add-on.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfigIntegrationConfig?>? integrationConfig;
  /// Configuration for the Monetization add-on.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfigMonetizationConfig?>? monetizationConfig;

  /// Creates a new [AddonsConfigAddonsConfig].
  /// [advancedApiOpsConfig] Configuration for the Advanced API Ops add-on.
  /// [apiSecurityConfig] Configuration for the API Security add-on.
  /// [connectorsPlatformConfig] Configuration for the Monetization add-on.
  /// [integrationConfig] Configuration for the Integration add-on.
  /// [monetizationConfig] Configuration for the Monetization add-on.
  const AddonsConfigAddonsConfig({
    this.advancedApiOpsConfig,
    this.apiSecurityConfig,
    this.connectorsPlatformConfig,
    this.integrationConfig,
    this.monetizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedApiOpsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfigAdvancedApiOpsConfig, Map<String, dynamic>>(advancedApiOpsConfig, (value) => value.toMap()),
      'apiSecurityConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfigApiSecurityConfig, Map<String, dynamic>>(apiSecurityConfig, (value) => value.toMap()),
      'connectorsPlatformConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfigConnectorsPlatformConfig, Map<String, dynamic>>(connectorsPlatformConfig, (value) => value.toMap()),
      'integrationConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfigIntegrationConfig, Map<String, dynamic>>(integrationConfig, (value) => value.toMap()),
      'monetizationConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfigMonetizationConfig, Map<String, dynamic>>(monetizationConfig, (value) => value.toMap()),
    };
  }

  factory AddonsConfigAddonsConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfigAddonsConfig(
      advancedApiOpsConfig: (() { final guardedValue = map['advancedApiOpsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigAddonsConfigAdvancedApiOpsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiSecurityConfig: (() { final guardedValue = map['apiSecurityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigAddonsConfigApiSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorsPlatformConfig: (() { final guardedValue = map['connectorsPlatformConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigAddonsConfigConnectorsPlatformConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationConfig: (() { final guardedValue = map['integrationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigAddonsConfigIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monetizationConfig: (() { final guardedValue = map['monetizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigAddonsConfigMonetizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
