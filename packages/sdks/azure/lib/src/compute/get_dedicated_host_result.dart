// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDedicatedHost.
class GetDedicatedHostResult {
  final String dedicatedHostGroupName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location where the Dedicated Host exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Dedicated Host.
  final Map<String, String> tags;

  /// Creates a new [GetDedicatedHostResult].
  /// [dedicatedHostGroupName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location where the Dedicated Host exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Dedicated Host.
  const GetDedicatedHostResult({
    required this.dedicatedHostGroupName,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostGroupName': dedicatedHostGroupName,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetDedicatedHostResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostResult(
      dedicatedHostGroupName: map['dedicatedHostGroupName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
