// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection.dart';
import 'service_access_policy_entry.dart';
import 'service_authentication_configuration_info.dart';
import 'service_cors_configuration_info.dart';
import 'service_cosmos_db_configuration_info.dart';
import 'service_export_configuration_info.dart';

/// The properties of a service instance.
class ServicesProperties {
  /// The access policies of the service instance.
  final pulumi.Input<List<ServiceAccessPolicyEntry>>? accessPolicies;
  /// The authentication configuration for the service instance.
  final pulumi.Input<ServiceAuthenticationConfigurationInfo>? authenticationConfiguration;
  /// The settings for the CORS configuration of the service instance.
  final pulumi.Input<ServiceCorsConfigurationInfo>? corsConfiguration;
  /// The settings for the Cosmos DB database backing the service.
  final pulumi.Input<ServiceCosmosDbConfigurationInfo>? cosmosDbConfiguration;
  /// The settings for the export operation of the service instance.
  final pulumi.Input<ServiceExportConfigurationInfo>? exportConfiguration;
  /// The list of private endpoint connections that are set up for this resource.
  final pulumi.Input<List<PrivateEndpointConnection>>? privateEndpointConnections;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [ServicesProperties].
  /// [accessPolicies] The access policies of the service instance.
  /// [authenticationConfiguration] The authentication configuration for the service instance.
  /// [corsConfiguration] The settings for the CORS configuration of the service instance.
  /// [cosmosDbConfiguration] The settings for the Cosmos DB database backing the service.
  /// [exportConfiguration] The settings for the export operation of the service instance.
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  ServicesProperties({
    this.accessPolicies,
    this.authenticationConfiguration,
    this.corsConfiguration,
    this.cosmosDbConfiguration,
    this.exportConfiguration,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccessPolicyEntry>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<ServiceAccessPolicyEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceAuthenticationConfigurationInfo, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceCorsConfigurationInfo, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'cosmosDbConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceCosmosDbConfigurationInfo, Map<String, dynamic>>(cosmosDbConfiguration, (value) => value.toMap()),
      'exportConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceExportConfigurationInfo, Map<String, dynamic>>(exportConfiguration, (value) => value.toMap()),
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory ServicesProperties.fromMap(Map<String, dynamic> map) {
    return ServicesProperties(
      accessPolicies: map['accessPolicies'] == null ? null : (pulumi.Input.decodeList<ServiceAccessPolicyEntry>(map['accessPolicies']!, (value) => ServiceAccessPolicyEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : (ServiceAuthenticationConfigurationInfo.fromMap((map['authenticationConfiguration']! as Map).cast<String, dynamic>())).input(),
      corsConfiguration: map['corsConfiguration'] == null ? null : (ServiceCorsConfigurationInfo.fromMap((map['corsConfiguration']! as Map).cast<String, dynamic>())).input(),
      cosmosDbConfiguration: map['cosmosDbConfiguration'] == null ? null : (ServiceCosmosDbConfigurationInfo.fromMap((map['cosmosDbConfiguration']! as Map).cast<String, dynamic>())).input(),
      exportConfiguration: map['exportConfiguration'] == null ? null : (ServiceExportConfigurationInfo.fromMap((map['exportConfiguration']! as Map).cast<String, dynamic>())).input(),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : (pulumi.Input.decodeList<PrivateEndpointConnection>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
    );
  }
}

