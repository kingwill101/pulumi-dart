// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config_apigee_edge_config.dart';
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config_apigee_opdk_config.dart';
import 'addon_config_gateway_plugin_addon_config_gateway_plugin_config_apigee_xhybrid_config.dart';

class AddonConfigGatewayPluginAddonConfigGatewayPluginConfig {
  /// Configuration for Apigee Edge gateways.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig?>? apigeeEdgeConfig;
  /// Configuration for Apigee OPDK gateways.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig?>? apigeeOpdkConfig;
  /// Configuration for Apigee X and Apigee Hybrid gateways.
  /// Structure is documented below.
  final pulumi.Input<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig?>? apigeeXHybridConfig;
  /// The name of the gateway plugin instance for which the config is to be specified.
  /// Format: projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}
  final pulumi.Input<String> pluginInstance;

  /// Creates a new [AddonConfigGatewayPluginAddonConfigGatewayPluginConfig].
  /// [apigeeEdgeConfig] Configuration for Apigee Edge gateways.
  /// [apigeeOpdkConfig] Configuration for Apigee OPDK gateways.
  /// [apigeeXHybridConfig] Configuration for Apigee X and Apigee Hybrid gateways.
  /// [pluginInstance] The name of the gateway plugin instance for which the config is to be specified.
  const AddonConfigGatewayPluginAddonConfigGatewayPluginConfig({
    this.apigeeEdgeConfig,
    this.apigeeOpdkConfig,
    this.apigeeXHybridConfig,
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apigeeEdgeConfig': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig, Map<String, dynamic>>(apigeeEdgeConfig, (value) => value.toMap()),
      'apigeeOpdkConfig': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig, Map<String, dynamic>>(apigeeOpdkConfig, (value) => value.toMap()),
      'apigeeXHybridConfig': ?pulumi.Input.mapOptionalInputValue<AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig, Map<String, dynamic>>(apigeeXHybridConfig, (value) => value.toMap()),
      'pluginInstance': pluginInstance,
    };
  }

  factory AddonConfigGatewayPluginAddonConfigGatewayPluginConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfigGatewayPluginAddonConfigGatewayPluginConfig(
      apigeeEdgeConfig: (() { final guardedValue = map['apigeeEdgeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apigeeOpdkConfig: (() { final guardedValue = map['apigeeOpdkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeOpdkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apigeeXHybridConfig: (() { final guardedValue = map['apigeeXHybridConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pluginInstance: pulumi.Input.fromValue(map['pluginInstance'] as String),
    );
  }
}
