// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config_apigee_xhybrid_config_environment_filter.dart';

class AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig {
  /// The filter to apply on the resources managed by the gateway plugin instance.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter?>? environmentFilter;

  /// Creates a new [AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig].
  /// [environmentFilter] The filter to apply on the resources managed by the gateway plugin instance.
  const AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig({
    this.environmentFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentFilter': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter, Map<String, dynamic>>(environmentFilter, (value) => value.toMap()),
    };
  }

  factory AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig(
      environmentFilter: (() { final guardedValue = map['environmentFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
