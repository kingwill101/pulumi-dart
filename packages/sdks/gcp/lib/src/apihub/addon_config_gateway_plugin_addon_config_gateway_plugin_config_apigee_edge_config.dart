// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config_apigee_edge_config_environment_filter.dart';

class AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig {
  /// The filter to apply on the resources managed by the gateway plugin instance.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilter?>? environmentFilter;

  /// Creates a new [AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig].
  /// [environmentFilter] The filter to apply on the resources managed by the gateway plugin instance.
  const AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig({
    this.environmentFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentFilter': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilter, Map<String, dynamic>>(environmentFilter, (value) => value.toMap()),
    };
  }

  factory AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig(
      environmentFilter: (() { final guardedValue = map['environmentFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
