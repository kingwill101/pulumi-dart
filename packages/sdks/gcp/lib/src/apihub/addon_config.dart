// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config_all_data_addon_config.dart';
import 'addon_config_gateway_plugin_addon_config.dart';

class AddonConfig {
  /// Configuration for addons which act on all data in the API hub.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigAllDataAddonConfig?>? allDataAddonConfig;
  /// Configuration for gateway plugin addons.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfig?>? gatewayPluginAddonConfig;

  /// Creates a new [AddonConfig].
  /// [allDataAddonConfig] Configuration for addons which act on all data in the API hub.
  /// [gatewayPluginAddonConfig] Configuration for gateway plugin addons.
  const AddonConfig({
    this.allDataAddonConfig,
    this.gatewayPluginAddonConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allDataAddonConfig': ?pulumi.Input.mapOptionalInputValue<AddonConfigAllDataAddonConfig, Map<String, dynamic>>(allDataAddonConfig, (value) => value.toMap()),
      'gatewayPluginAddonConfig': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfig, Map<String, dynamic>>(gatewayPluginAddonConfig, (value) => value.toMap()),
    };
  }

  factory AddonConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfig(
      allDataAddonConfig: (() { final guardedValue = map['allDataAddonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigAllDataAddonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayPluginAddonConfig: (() { final guardedValue = map['gatewayPluginAddonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
