// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'geo_data_replication_properties_response.dart';
import 'identity_response.dart';
import 'platform_capabilities_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sbsku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Alternate name for namespace
  final String? alternateName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the namespace was created
  final String? createdAt;
  /// This property disables SAS authentication for the Service Bus namespace.
  final bool? disableLocalAuth;
  /// Properties of BYOK Encryption description
  final EncryptionResponse? encryption;
  /// Geo Data Replication settings for the namespace
  final GeoDataReplicationPropertiesResponse? geoDataReplication;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Properties of BYOK Identity description
  final IdentityResponse? identity;
  /// The IP address type for the namespace. Determines whether the namespace supports IPv4 only or both IPv4 and IPv6 (dual stack).
  final String? ipAddressType;
  /// The geo-location where the resource lives
  final String? location;
  /// Identifier for Azure Insights metrics
  final String? metricId;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  final String? minimumTlsVersion;
  /// The name of the resource
  final String? name;
  final PlatformCapabilitiesResponse? platformCapabilities;
  /// The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  final int? premiumMessagingPartitions;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state of the namespace.
  final String? provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final String? publicNetworkAccess;
  /// Endpoint you can use to perform Service Bus operations.
  final String? serviceBusEndpoint;
  /// Properties of SKU
  final SBSkuResponse? sku;
  /// Status of the namespace.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The time the namespace was updated.
  final String? updatedAt;
  /// Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.
  final bool? zoneRedundant;

  /// Creates a new [GetNamespaceResult].
  /// [alternateName] Alternate name for namespace
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] The time the namespace was created
  /// [disableLocalAuth] This property disables SAS authentication for the Service Bus namespace.
  /// [encryption] Properties of BYOK Encryption description
  /// [geoDataReplication] Geo Data Replication settings for the namespace
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Properties of BYOK Identity description
  /// [ipAddressType] The IP address type for the namespace. Determines whether the namespace supports IPv4 only or both IPv4 and IPv6 (dual stack).
  /// [location] The geo-location where the resource lives
  /// [metricId] Identifier for Azure Insights metrics
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'
  /// [name] The name of the resource
  /// [platformCapabilities] Optional.
  /// [premiumMessagingPartitions] The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the namespace.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [serviceBusEndpoint] Endpoint you can use to perform Service Bus operations.
  /// [sku] Properties of SKU
  /// [status] Status of the namespace.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] The time the namespace was updated.
  /// [zoneRedundant] Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.
  GetNamespaceResult({
    this.alternateName,
    this.azureApiVersion,
    this.createdAt,
    this.disableLocalAuth,
    this.encryption,
    this.geoDataReplication,
    this.id,
    this.identity,
    this.ipAddressType,
    this.location,
    this.metricId,
    this.minimumTlsVersion,
    this.name,
    this.platformCapabilities,
    this.premiumMessagingPartitions,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    this.serviceBusEndpoint,
    this.sku,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.updatedAt,
    this.zoneRedundant,
  }) : publicNetworkAccess = publicNetworkAccess ?? 'Enabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'azureApiVersion': ?azureApiVersion,
      'createdAt': ?createdAt,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?encryption?.toMap(),
      'geoDataReplication': ?geoDataReplication?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'ipAddressType': ?ipAddressType,
      'location': ?location,
      'metricId': ?metricId,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'platformCapabilities': ?platformCapabilities?.toMap(),
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceBusEndpoint': ?serviceBusEndpoint,
      'sku': ?sku?.toMap(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      alternateName: (() { final guardedValue = map['alternateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      geoDataReplication: (() { final guardedValue = map['geoDataReplication']; if (guardedValue == null) return null; return GeoDataReplicationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricId: (() { final guardedValue = map['metricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformCapabilities: (() { final guardedValue = map['platformCapabilities']; if (guardedValue == null) return null; return PlatformCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      premiumMessagingPartitions: (() { final guardedValue = map['premiumMessagingPartitions']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBusEndpoint: (() { final guardedValue = map['serviceBusEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SBSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
