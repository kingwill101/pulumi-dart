// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config_apigee_opdk_config_environment_filter.dart';

class AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig {
  /// The filter to apply on the resources managed by the gateway plugin instance.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfigEnvironmentFilter?>? environmentFilter;

  /// Creates a new [AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig].
  /// [environmentFilter] The filter to apply on the resources managed by the gateway plugin instance.
  const AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig({
    this.environmentFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentFilter': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfigEnvironmentFilter, Map<String, dynamic>>(environmentFilter, (value) => value.toMap()),
    };
  }

  factory AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig(
      environmentFilter: (() { final guardedValue = map['environmentFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfigEnvironmentFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
