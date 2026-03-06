// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_identity.dart';
import 'get_service_query_key.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  final String customerManagedKeyEncryptionComplianceStatus;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetServiceIdentity> identities;
  /// The name of this Query Key.
  final String name;
  /// The number of partitions which have been created.
  final int partitionCount;
  /// The Primary Key used for Search Service Administration.
  final String primaryKey;
  /// Whether or not public network access is enabled for this resource.
  final bool publicNetworkAccessEnabled;
  /// A `query_keys` block as defined below.
  final List<GetServiceQueryKey> queryKeys;
  /// The number of replica's which have been created.
  final int replicaCount;
  final String resourceGroupName;
  /// The Secondary Key used for Search Service Administration.
  final String secondaryKey;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetServiceResult].
  /// [customerManagedKeyEncryptionComplianceStatus] Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [name] The name of this Query Key.
  /// [partitionCount] The number of partitions which have been created.
  /// [primaryKey] The Primary Key used for Search Service Administration.
  /// [publicNetworkAccessEnabled] Whether or not public network access is enabled for this resource.
  /// [queryKeys] A `query_keys` block as defined below.
  /// [replicaCount] The number of replica's which have been created.
  /// [resourceGroupName] Required.
  /// [secondaryKey] The Secondary Key used for Search Service Administration.
  /// [tags] A mapping of tags assigned to the resource.
  const GetServiceResult({
    required this.customerManagedKeyEncryptionComplianceStatus,
    required this.id,
    required this.identities,
    required this.name,
    required this.partitionCount,
    required this.primaryKey,
    required this.publicNetworkAccessEnabled,
    required this.queryKeys,
    required this.replicaCount,
    required this.resourceGroupName,
    required this.secondaryKey,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryptionComplianceStatus': customerManagedKeyEncryptionComplianceStatus,
      'id': id,
      'identities': pulumi.Input.encodeList<GetServiceIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'name': name,
      'partitionCount': partitionCount,
      'primaryKey': primaryKey,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'queryKeys': pulumi.Input.encodeList<GetServiceQueryKey, Map<String, dynamic>>(queryKeys, (value) => value.toMap()),
      'replicaCount': replicaCount,
      'resourceGroupName': resourceGroupName,
      'secondaryKey': secondaryKey,
      'tags': tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      customerManagedKeyEncryptionComplianceStatus: map['customerManagedKeyEncryptionComplianceStatus'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetServiceIdentity>(map['identities']!, (value) => GetServiceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      partitionCount: map['partitionCount'] as int,
      primaryKey: map['primaryKey'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      queryKeys: pulumi.Input.decodeList<GetServiceQueryKey>(map['queryKeys']!, (value) => GetServiceQueryKey.fromMap((value as Map).cast<String, dynamic>())),
      replicaCount: map['replicaCount'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryKey: map['secondaryKey'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

