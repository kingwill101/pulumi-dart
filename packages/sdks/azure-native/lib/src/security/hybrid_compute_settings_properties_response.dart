// ignore_for_file: unused_element, unnecessary_cast

import 'proxy_server_properties_response.dart';
import 'service_principal_properties_response.dart';

/// Settings for hybrid compute management
class HybridComputeSettingsPropertiesResponse {
  /// Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  final String autoProvision;
  /// State of the service principal and its secret
  final String hybridComputeProvisioningState;
  /// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  final ProxyServerPropertiesResponse? proxyServer;
  /// The location where the metadata of machines will be stored
  final String? region;
  /// The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  final String? resourceGroupName;
  /// An object to access resources that are secured by an Azure AD tenant.
  final ServicePrincipalPropertiesResponse? servicePrincipal;

  /// Creates a new [HybridComputeSettingsPropertiesResponse].
  /// [autoProvision] Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  /// [hybridComputeProvisioningState] State of the service principal and its secret
  /// [proxyServer] For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  /// [region] The location where the metadata of machines will be stored
  /// [resourceGroupName] The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  /// [servicePrincipal] An object to access resources that are secured by an Azure AD tenant.
  HybridComputeSettingsPropertiesResponse({
    required this.autoProvision,
    required this.hybridComputeProvisioningState,
    this.proxyServer,
    this.region,
    this.resourceGroupName,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvision': autoProvision,
      'hybridComputeProvisioningState': hybridComputeProvisioningState,
      'proxyServer': ?proxyServer == null ? null : proxyServer!.toMap(),
      'region': ?region,
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipal': ?servicePrincipal == null ? null : servicePrincipal!.toMap(),
    };
  }

  factory HybridComputeSettingsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HybridComputeSettingsPropertiesResponse(
      autoProvision: map['autoProvision'] as String,
      hybridComputeProvisioningState: map['hybridComputeProvisioningState'] as String,
      proxyServer: map['proxyServer'] == null ? null : ProxyServerPropertiesResponse.fromMap((map['proxyServer'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      servicePrincipal: map['servicePrincipal'] == null ? null : ServicePrincipalPropertiesResponse.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>()),
    );
  }
}

