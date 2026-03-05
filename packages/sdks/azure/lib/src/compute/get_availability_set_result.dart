// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAvailabilitySet.
class GetAvailabilitySetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The supported Azure location where the Availability Set exists.
  final String location;

  /// Whether the availability set is managed or not.
  final bool managed;
  final String name;

  /// The number of fault domains that are used.
  final String platformFaultDomainCount;

  /// The number of update domains that are used.
  final String platformUpdateDomainCount;
  final String resourceGroupName;

  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetAvailabilitySetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the Availability Set exists.
  /// [managed] Whether the availability set is managed or not.
  /// [name] Required.
  /// [platformFaultDomainCount] The number of fault domains that are used.
  /// [platformUpdateDomainCount] The number of update domains that are used.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  GetAvailabilitySetResult({
    required this.id,
    required this.location,
    required this.managed,
    required this.name,
    required this.platformFaultDomainCount,
    required this.platformUpdateDomainCount,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'managed': managed,
      'name': name,
      'platformFaultDomainCount': platformFaultDomainCount,
      'platformUpdateDomainCount': platformUpdateDomainCount,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetAvailabilitySetResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetResult(
      id: map['id'] as String,
      location: map['location'] as String,
      managed: map['managed'] as bool,
      name: map['name'] as String,
      platformFaultDomainCount: map['platformFaultDomainCount'] as String,
      platformUpdateDomainCount: map['platformUpdateDomainCount'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
