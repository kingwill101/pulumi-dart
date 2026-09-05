// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAvailabilitySet.
class GetAvailabilitySetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The supported Azure location where the Availability Set exists.
  final String? location;
  /// Whether the availability set is managed or not.
  final bool? managed;
  final String? name;
  /// The number of fault domains that are used.
  final String? platformFaultDomainCount;
  /// The number of update domains that are used.
  final String? platformUpdateDomainCount;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAvailabilitySetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the Availability Set exists.
  /// [managed] Whether the availability set is managed or not.
  /// [name] Optional.
  /// [platformFaultDomainCount] The number of fault domains that are used.
  /// [platformUpdateDomainCount] The number of update domains that are used.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  const GetAvailabilitySetResult({
    this.id,
    this.location,
    this.managed,
    this.name,
    this.platformFaultDomainCount,
    this.platformUpdateDomainCount,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'managed': ?managed,
      'name': ?name,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'platformUpdateDomainCount': ?platformUpdateDomainCount,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetAvailabilitySetResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformUpdateDomainCount: (() { final guardedValue = map['platformUpdateDomainCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
