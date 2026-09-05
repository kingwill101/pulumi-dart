// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDedicatedHostGroup.
class GetDedicatedHostGroupResult {
  /// Whether virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group.
  final bool? automaticPlacementEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the Dedicated Host Group exists.
  final String? location;
  final String? name;
  /// The number of fault domains that the Dedicated Host Group spans.
  final int? platformFaultDomainCount;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// A list of Availability Zones in which this Dedicated Host Group is located.
  final List<String>? zones;

  /// Creates a new [GetDedicatedHostGroupResult].
  /// [automaticPlacementEnabled] Whether virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Dedicated Host Group exists.
  /// [name] Optional.
  /// [platformFaultDomainCount] The number of fault domains that the Dedicated Host Group spans.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones in which this Dedicated Host Group is located.
  const GetDedicatedHostGroupResult({
    this.automaticPlacementEnabled,
    this.id,
    this.location,
    this.name,
    this.platformFaultDomainCount,
    this.resourceGroupName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticPlacementEnabled': ?automaticPlacementEnabled,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GetDedicatedHostGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupResult(
      automaticPlacementEnabled: (() { final guardedValue = map['automaticPlacementEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
