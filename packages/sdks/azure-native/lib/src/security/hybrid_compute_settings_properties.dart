// ignore_for_file: unused_element, unnecessary_cast

import 'proxy_server_properties.dart';
import 'service_principal_properties.dart';

/// Settings for hybrid compute management
class HybridComputeSettingsProperties {
  /// Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  final String autoProvision;
  /// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  final ProxyServerProperties? proxyServer;
  /// The location where the metadata of machines will be stored
  final String? region;
  /// The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  final String? resourceGroupName;
  /// An object to access resources that are secured by an Azure AD tenant.
  final ServicePrincipalProperties? servicePrincipal;

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
      'proxyServer': ?proxyServer == null ? null : proxyServer!.toMap(),
      'region': ?region,
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipal': ?servicePrincipal == null ? null : servicePrincipal!.toMap(),
    };
  }

  factory HybridComputeSettingsProperties.fromMap(Map<String, dynamic> map) {
    return HybridComputeSettingsProperties(
      autoProvision: map['autoProvision'] as String,
      proxyServer: map['proxyServer'] == null ? null : ProxyServerProperties.fromMap((map['proxyServer'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      servicePrincipal: map['servicePrincipal'] == null ? null : ServicePrincipalProperties.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>()),
    );
  }
}

