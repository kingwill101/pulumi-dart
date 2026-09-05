// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkDdosProtectionPlan.
class GetNetworkDdosProtectionPlanResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies the supported Azure location where the resource exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// A list of IDs of the Virtual Networks associated with this DDoS Protection Plan.
  final List<String>? virtualNetworkIds;

  /// Creates a new [GetNetworkDdosProtectionPlanResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [virtualNetworkIds] A list of IDs of the Virtual Networks associated with this DDoS Protection Plan.
  const GetNetworkDdosProtectionPlanResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualNetworkIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualNetworkIds': ?virtualNetworkIds,
    };
  }

  factory GetNetworkDdosProtectionPlanResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkDdosProtectionPlanResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualNetworkIds: (() { final guardedValue = map['virtualNetworkIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
