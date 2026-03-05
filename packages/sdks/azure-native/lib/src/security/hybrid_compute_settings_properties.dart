// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_server_properties.dart';
import 'service_principal_properties.dart';

/// Settings for hybrid compute management
class HybridComputeSettingsProperties {
  /// Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  final pulumi.Input<String> autoProvision;
  /// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  final pulumi.Input<ProxyServerProperties>? proxyServer;
  /// The location where the metadata of machines will be stored
  final pulumi.Input<String>? region;
  /// The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  final pulumi.Input<String>? resourceGroupName;
  /// An object to access resources that are secured by an Azure AD tenant.
  final pulumi.Input<ServicePrincipalProperties>? servicePrincipal;

  /// Creates a new [HybridComputeSettingsProperties].
  /// [autoProvision] Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  /// [proxyServer] For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  /// [region] The location where the metadata of machines will be stored
  /// [resourceGroupName] The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  /// [servicePrincipal] An object to access resources that are secured by an Azure AD tenant.
  HybridComputeSettingsProperties({
    required this.autoProvision,
    this.proxyServer,
    this.region,
    this.resourceGroupName,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvision': autoProvision,
      'proxyServer': ?pulumi.Input.mapOptionalInputValue<ProxyServerProperties, Map<String, dynamic>>(proxyServer, (value) => value.toMap()),
      'region': ?region,
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalProperties, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
    };
  }

  factory HybridComputeSettingsProperties.fromMap(Map<String, dynamic> map) {
    return HybridComputeSettingsProperties(
      autoProvision: pulumi.Input.fromValue(map['autoProvision'] as String),
      proxyServer: (() { final guardedValue = map['proxyServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyServerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePrincipalProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

