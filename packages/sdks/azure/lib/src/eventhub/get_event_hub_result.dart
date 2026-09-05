// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventHub.
class GetEventHubResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? namespaceName;
  /// The number of partitions in the EventHub.
  final int? partitionCount;
  /// The identifiers for the partitions of this EventHub.
  final List<String>? partitionIds;
  final String? resourceGroupName;

  /// Creates a new [GetEventHubResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [namespaceName] Optional.
  /// [partitionCount] The number of partitions in the EventHub.
  /// [partitionIds] The identifiers for the partitions of this EventHub.
  /// [resourceGroupName] Optional.
  const GetEventHubResult({
    this.id,
    this.name,
    this.namespaceName,
    this.partitionCount,
    this.partitionIds,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'partitionCount': ?partitionCount,
      'partitionIds': ?partitionIds,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetEventHubResult.fromMap(Map<String, dynamic> map) {
    return GetEventHubResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      partitionIds: (() { final guardedValue = map['partitionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
