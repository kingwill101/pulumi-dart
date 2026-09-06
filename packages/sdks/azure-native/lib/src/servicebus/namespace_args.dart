// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'geo_data_replication_properties.dart';
import 'identity.dart';
import 'platform_capabilities.dart';
import 'private_endpoint_connection.dart';
import 'sbsku.dart';

/// {@template pulumi_servicebus_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_args_doc}
class NamespaceArgs {
  /// Alternate name for namespace
  final pulumi.Input<String?>? alternateName;
  /// This property disables SAS authentication for the Service Bus namespace.
  final pulumi.Input<bool?>? disableLocalAuth;
  /// Properties of BYOK Encryption description
  final pulumi.Input<Encryption?>? encryption;
  /// Geo Data Replication settings for the namespace
  final pulumi.Input<GeoDataReplicationProperties?>? geoDataReplication;
  /// Properties of BYOK Identity description
  final pulumi.Input<Identity?>? identity;
  /// The IP address type for the namespace. Determines whether the namespace supports IPv4 only or both IPv4 and IPv6 (dual stack).
  final pulumi.Input<dynamic>? ipAddressType;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  final pulumi.Input<dynamic>? minimumTlsVersion;
  /// The namespace name
  final pulumi.Input<String?>? namespaceName;
  final pulumi.Input<PlatformCapabilities?>? platformCapabilities;
  /// The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  final pulumi.Input<int?>? premiumMessagingPartitions;
  /// List of private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnection>?>? privateEndpointConnections;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Properties of SKU
  final pulumi.Input<SBSku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.
  final pulumi.Input<bool?>? zoneRedundant;

  /// Creates a new [NamespaceArgs].
  /// [alternateName] Alternate name for namespace
  /// [disableLocalAuth] This property disables SAS authentication for the Service Bus namespace.
  /// [encryption] Properties of BYOK Encryption description
  /// [geoDataReplication] Geo Data Replication settings for the namespace
  /// [identity] Properties of BYOK Identity description
  /// [ipAddressType] The IP address type for the namespace. Determines whether the namespace supports IPv4 only or both IPv4 and IPv6 (dual stack).
  /// [location] The geo-location where the resource lives
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'
  /// [namespaceName] The namespace name
  /// [platformCapabilities] Optional.
  /// [premiumMessagingPartitions] The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Properties of SKU
  /// [tags] Resource tags.
  /// [zoneRedundant] Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.
  NamespaceArgs({
    this.alternateName,
    this.disableLocalAuth,
    this.encryption,
    this.geoDataReplication,
    this.identity,
    this.ipAddressType,
    this.location,
    this.minimumTlsVersion,
    this.namespaceName,
    this.platformCapabilities,
    this.premiumMessagingPartitions,
    this.privateEndpointConnections,
    pulumi.Input<dynamic>? publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.zoneRedundant,
  }) : publicNetworkAccess = publicNetworkAccess ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'geoDataReplication': ?pulumi.Input.mapOptionalInputValue<GeoDataReplicationProperties, Map<String, dynamic>>(geoDataReplication, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'namespaceName': ?namespaceName,
      'platformCapabilities': ?pulumi.Input.mapOptionalInputValue<PlatformCapabilities, Map<String, dynamic>>(platformCapabilities, (value) => value.toMap()),
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SBSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      alternateName: (() { final guardedValue = map['alternateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geoDataReplication: (() { final guardedValue = map['geoDataReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeoDataReplicationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformCapabilities: (() { final guardedValue = map['platformCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlatformCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      premiumMessagingPartitions: (() { final guardedValue = map['premiumMessagingPartitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnection>(guardedValue, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
