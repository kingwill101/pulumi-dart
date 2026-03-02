// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sbsku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Alternate name for namespace
  final String? alternateName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the namespace was created
  final String createdAt;
  /// This property disables SAS authentication for the Service Bus namespace.
  final bool? disableLocalAuth;
  /// Properties of BYOK Encryption description
  final EncryptionResponse? encryption;
  /// Resource Id
  final String id;
  /// Properties of BYOK Identity description
  final IdentityResponse? identity;
  /// The Geo-location where the resource lives
  final String location;
  /// Identifier for Azure Insights metrics
  final String metricId;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  final String? minimumTlsVersion;
  /// Resource name
  final String name;
  /// The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  final int? premiumMessagingPartitions;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state of the namespace.
  final String provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final String? publicNetworkAccess;
  /// Endpoint you can use to perform Service Bus operations.
  final String serviceBusEndpoint;
  /// Properties of SKU
  final SBSkuResponse? sku;
  /// Status of the namespace.
  final String status;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;
  /// The time the namespace was updated.
  final String updatedAt;
  /// This property reflects if zone redundancy has been enabled for namespaces in regions that support availability zones.
  final bool? zoneRedundant;

  /// Creates a new [GetNamespaceResult].
  /// [alternateName] Alternate name for namespace
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] The time the namespace was created
  /// [disableLocalAuth] This property disables SAS authentication for the Service Bus namespace.
  /// [encryption] Properties of BYOK Encryption description
  /// [id] Resource Id
  /// [identity] Properties of BYOK Identity description
  /// [location] The Geo-location where the resource lives
  /// [metricId] Identifier for Azure Insights metrics
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'
  /// [name] Resource name
  /// [premiumMessagingPartitions] The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the namespace.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [serviceBusEndpoint] Endpoint you can use to perform Service Bus operations.
  /// [sku] Properties of SKU
  /// [status] Status of the namespace.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [updatedAt] The time the namespace was updated.
  /// [zoneRedundant] This property reflects if zone redundancy has been enabled for namespaces in regions that support availability zones.
  GetNamespaceResult({
    this.alternateName,
    required this.azureApiVersion,
    required this.createdAt,
    this.disableLocalAuth,
    this.encryption,
    required this.id,
    this.identity,
    required this.location,
    required this.metricId,
    this.minimumTlsVersion,
    required this.name,
    this.premiumMessagingPartitions,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceBusEndpoint,
    this.sku,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedAt,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'metricId': metricId,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': name,
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceBusEndpoint': serviceBusEndpoint,
      'sku': ?sku == null ? null : sku!.toMap(),
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedAt': updatedAt,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      alternateName: map['alternateName'] == null ? null : map['alternateName']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth']! as bool,
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      metricId: map['metricId'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion']! as String,
      name: map['name'] as String,
      premiumMessagingPartitions: map['premiumMessagingPartitions'] == null ? null : map['premiumMessagingPartitions']! as int,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      serviceBusEndpoint: map['serviceBusEndpoint'] as String,
      sku: map['sku'] == null ? null : SBSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant']! as bool,
    );
  }
}

