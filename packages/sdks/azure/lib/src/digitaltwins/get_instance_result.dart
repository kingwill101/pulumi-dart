// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstance.
class GetInstanceResult {
  /// The API endpoint to work with this Digital Twins instance.
  final String hostName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Digital Twins instance exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Digital Twins instance.
  final Map<String, String> tags;

  /// Creates a new [GetInstanceResult].
  /// [hostName] The API endpoint to work with this Digital Twins instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Digital Twins instance exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Digital Twins instance.
  const GetInstanceResult({
    required this.hostName,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
