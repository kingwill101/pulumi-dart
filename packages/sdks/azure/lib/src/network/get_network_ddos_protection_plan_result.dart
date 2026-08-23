// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkDdosProtectionPlan.
class GetNetworkDdosProtectionPlanResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies the supported Azure location where the resource exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// A list of IDs of the Virtual Networks associated with this DDoS Protection Plan.
  final List<String> virtualNetworkIds;

  /// Creates a new [GetNetworkDdosProtectionPlanResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [virtualNetworkIds] A list of IDs of the Virtual Networks associated with this DDoS Protection Plan.
  const GetNetworkDdosProtectionPlanResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.virtualNetworkIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'virtualNetworkIds': virtualNetworkIds,
    };
  }

  factory GetNetworkDdosProtectionPlanResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkDdosProtectionPlanResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualNetworkIds: (map['virtualNetworkIds'] as List).cast<String>(),
    );
  }
}
