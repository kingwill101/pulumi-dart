// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_identity.dart';
import 'get_service_query_key.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  final String? customerManagedKeyEncryptionComplianceStatus;
  /// The endpoint used to connect to this Search Service.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetServiceIdentity>? identities;
  /// The name of this Query Key.
  final String? name;
  /// The number of partitions which have been created.
  final int? partitionCount;
  /// The Primary Key used for Search Service Administration.
  final String? primaryKey;
  /// Whether or not public network access is enabled for this resource.
  final bool? publicNetworkAccessEnabled;
  /// A `queryKeys` block as defined below.
  final List<GetServiceQueryKey>? queryKeys;
  /// The number of replica's which have been created.
  final int? replicaCount;
  final String? resourceGroupName;
  /// The Secondary Key used for Search Service Administration.
  final String? secondaryKey;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceResult].
  /// [customerManagedKeyEncryptionComplianceStatus] Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  /// [endpoint] The endpoint used to connect to this Search Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [name] The name of this Query Key.
  /// [partitionCount] The number of partitions which have been created.
  /// [primaryKey] The Primary Key used for Search Service Administration.
  /// [publicNetworkAccessEnabled] Whether or not public network access is enabled for this resource.
  /// [queryKeys] A `queryKeys` block as defined below.
  /// [replicaCount] The number of replica's which have been created.
  /// [resourceGroupName] Optional.
  /// [secondaryKey] The Secondary Key used for Search Service Administration.
  /// [tags] A mapping of tags assigned to the resource.
  const GetServiceResult({
    this.customerManagedKeyEncryptionComplianceStatus,
    this.endpoint,
    this.id,
    this.identities,
    this.name,
    this.partitionCount,
    this.primaryKey,
    this.publicNetworkAccessEnabled,
    this.queryKeys,
    this.replicaCount,
    this.resourceGroupName,
    this.secondaryKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryptionComplianceStatus': ?customerManagedKeyEncryptionComplianceStatus,
      'endpoint': ?endpoint,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'partitionCount': ?partitionCount,
      'primaryKey': ?primaryKey,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queryKeys': ?(() { final guardedValue = queryKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceQueryKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'replicaCount': ?replicaCount,
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'tags': ?tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      customerManagedKeyEncryptionComplianceStatus: (() { final guardedValue = map['customerManagedKeyEncryptionComplianceStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceIdentity>(guardedValue, (value) => GetServiceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      queryKeys: (() { final guardedValue = map['queryKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceQueryKey>(guardedValue, (value) => GetServiceQueryKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
