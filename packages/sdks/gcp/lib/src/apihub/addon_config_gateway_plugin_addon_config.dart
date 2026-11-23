// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config.dart';

class AddonConfigGatewayPluginAddonConfig {
  /// The list of gateway plugin configs for which the addon is enabled.
  /// Structure is documented below.
  final pulumi.Input<List<AddonConfigGatewayPluginAddonConfigGatewayPluginConfig>> gatewayPluginConfigs;

  /// Creates a new [AddonConfigGatewayPluginAddonConfig].
  /// [gatewayPluginConfigs] The list of gateway plugin configs for which the addon is enabled.
  const AddonConfigGatewayPluginAddonConfig({
    required this.gatewayPluginConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayPluginConfigs': pulumi.Input.mapInputValue<List<AddonConfigGatewayPluginAddonConfigGatewayPluginConfig>, List<Map<String, dynamic>>>(gatewayPluginConfigs, (value) => pulumi.Input.encodeList<AddonConfigGatewayPluginAddonConfigGatewayPluginConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AddonConfigGatewayPluginAddonConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfigGatewayPluginAddonConfig(
      gatewayPluginConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AddonConfigGatewayPluginAddonConfigGatewayPluginConfig>(map['gatewayPluginConfigs']!, (value) => AddonConfigGatewayPluginAddonConfigGatewayPluginConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
