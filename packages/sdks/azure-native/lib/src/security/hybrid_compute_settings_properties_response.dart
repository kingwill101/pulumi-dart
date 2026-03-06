// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_server_properties_response.dart';
import 'service_principal_properties_response.dart';

/// Settings for hybrid compute management
class HybridComputeSettingsPropertiesResponse {
  /// Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  final pulumi.Input<String> autoProvision;
  /// State of the service principal and its secret
  final pulumi.Input<String> hybridComputeProvisioningState;
  /// For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  final pulumi.Input<ProxyServerPropertiesResponse>? proxyServer;
  /// The location where the metadata of machines will be stored
  final pulumi.Input<String>? region;
  /// The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  final pulumi.Input<String>? resourceGroupName;
  /// An object to access resources that are secured by an Azure AD tenant.
  final pulumi.Input<ServicePrincipalPropertiesResponse>? servicePrincipal;

  /// Creates a new [HybridComputeSettingsPropertiesResponse].
  /// [autoProvision] Whether or not to automatically install Azure Arc (hybrid compute) agents on machines
  /// [hybridComputeProvisioningState] State of the service principal and its secret
  /// [proxyServer] For a non-Azure machine that is not connected directly to the internet, specify a proxy server that the non-Azure machine can use.
  /// [region] The location where the metadata of machines will be stored
  /// [resourceGroupName] The name of the resource group where Arc (Hybrid Compute) connectors are connected.
  /// [servicePrincipal] An object to access resources that are secured by an Azure AD tenant.
  const HybridComputeSettingsPropertiesResponse({
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
      'proxyServer': ?pulumi.Input.mapOptionalInputValue<ProxyServerPropertiesResponse, Map<String, dynamic>>(proxyServer, (value) => value.toMap()),
      'region': ?region,
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalPropertiesResponse, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
    };
  }

  factory HybridComputeSettingsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HybridComputeSettingsPropertiesResponse(
      autoProvision: pulumi.Input.fromValue(map['autoProvision'] as String),
      hybridComputeProvisioningState: pulumi.Input.fromValue(map['hybridComputeProvisioningState'] as String),
      proxyServer: (() { final guardedValue = map['proxyServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePrincipalPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

