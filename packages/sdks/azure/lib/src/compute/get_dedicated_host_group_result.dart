// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDedicatedHostGroup.
class GetDedicatedHostGroupResult {
  /// Whether virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group.
  final bool automaticPlacementEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location where the Dedicated Host Group exists.
  final String location;
  final String name;
  /// The number of fault domains that the Dedicated Host Group spans.
  final int platformFaultDomainCount;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// A list of Availability Zones in which this Dedicated Host Group is located.
  final List<String> zones;

  /// Creates a new [GetDedicatedHostGroupResult].
  /// [automaticPlacementEnabled] Whether virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Dedicated Host Group exists.
  /// [name] Required.
  /// [platformFaultDomainCount] The number of fault domains that the Dedicated Host Group spans.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones in which this Dedicated Host Group is located.
  GetDedicatedHostGroupResult({
    required this.automaticPlacementEnabled,
    required this.id,
    required this.location,
    required this.name,
    required this.platformFaultDomainCount,
    required this.resourceGroupName,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticPlacementEnabled': automaticPlacementEnabled,
      'id': id,
      'location': location,
      'name': name,
      'platformFaultDomainCount': platformFaultDomainCount,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetDedicatedHostGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupResult(
      automaticPlacementEnabled: map['automaticPlacementEnabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      platformFaultDomainCount: map['platformFaultDomainCount'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

