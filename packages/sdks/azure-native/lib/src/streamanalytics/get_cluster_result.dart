// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_sku_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Represents the number of streaming units currently being used on the cluster.
  final int capacityAllocated;
  /// Represents the sum of the SUs of all streaming jobs associated with the cluster. If all of the jobs were running, this would be the capacity allocated.
  final int capacityAssigned;
  /// Unique identifier for the cluster.
  final String clusterId;
  /// The date this cluster was created.
  final String createdDate;
  /// The current entity tag for the cluster. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final String etag;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// The status of the cluster provisioning. The three terminal states are: Succeeded, Failed and Canceled
  final String provisioningState;
  /// The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
  final ClusterSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

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
  GetClusterResult({
    required this.azureApiVersion,
    required this.capacityAllocated,
    required this.capacityAssigned,
    required this.clusterId,
    required this.createdDate,
    required this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'capacityAllocated': capacityAllocated,
      'capacityAssigned': capacityAssigned,
      'clusterId': clusterId,
      'createdDate': createdDate,
      'etag': etag,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      capacityAllocated: map['capacityAllocated'] as int,
      capacityAssigned: map['capacityAssigned'] as int,
      clusterId: map['clusterId'] as String,
      createdDate: map['createdDate'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: map['sku'] == null ? null : ClusterSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

