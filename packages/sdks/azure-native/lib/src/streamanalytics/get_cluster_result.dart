// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_sku_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Represents the number of streaming units currently being used on the cluster.
  final int? capacityAllocated;
  /// Represents the sum of the SUs of all streaming jobs associated with the cluster. If all of the jobs were running, this would be the capacity allocated.
  final int? capacityAssigned;
  /// Unique identifier for the cluster.
  final String? clusterId;
  /// The date this cluster was created.
  final String? createdDate;
  /// The current entity tag for the cluster. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final String? etag;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the cluster provisioning. The three terminal states are: Succeeded, Failed and Canceled
  final String? provisioningState;
  /// The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
  final ClusterSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String? type;

  /// Creates a new [GetClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacityAllocated] Represents the number of streaming units currently being used on the cluster.
  /// [capacityAssigned] Represents the sum of the SUs of all streaming jobs associated with the cluster. If all of the jobs were running, this would be the capacity allocated.
  /// [clusterId] Unique identifier for the cluster.
  /// [createdDate] The date this cluster was created.
  /// [etag] The current entity tag for the cluster. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the cluster provisioning. The three terminal states are: Succeeded, Failed and Canceled
  /// [sku] The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  const GetClusterResult({
    this.azureApiVersion,
    this.capacityAllocated,
    this.capacityAssigned,
    this.clusterId,
    this.createdDate,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'capacityAllocated': ?capacityAllocated,
      'capacityAssigned': ?capacityAssigned,
      'clusterId': ?clusterId,
      'createdDate': ?createdDate,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityAllocated: (() { final guardedValue = map['capacityAllocated']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      capacityAssigned: (() { final guardedValue = map['capacityAssigned']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ClusterSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
