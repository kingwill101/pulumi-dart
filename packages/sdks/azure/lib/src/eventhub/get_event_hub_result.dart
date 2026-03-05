// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEventHub.
class GetEventHubResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String namespaceName;

  /// The number of partitions in the EventHub.
  final int partitionCount;

  /// The identifiers for the partitions of this EventHub.
  final List<String> partitionIds;
  final String resourceGroupName;

  /// Creates a new [GetEventHubResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [namespaceName] Required.
  /// [partitionCount] The number of partitions in the EventHub.
  /// [partitionIds] The identifiers for the partitions of this EventHub.
  /// [resourceGroupName] Required.
  GetEventHubResult({
    required this.id,
    required this.name,
    required this.namespaceName,
    required this.partitionCount,
    required this.partitionIds,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'namespaceName': namespaceName,
      'partitionCount': partitionCount,
      'partitionIds': partitionIds,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubResult.fromMap(Map<String, dynamic> map) {
    return GetEventHubResult(
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      partitionCount: map['partitionCount'] as int,
      partitionIds: (map['partitionIds'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
