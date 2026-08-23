// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeter.
class GetNetworkSecurityPerimeterResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Network Security Perimeter exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Network Security Perimeter.
  final Map<String, String> tags;

  /// Creates a new [GetNetworkSecurityPerimeterResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Network Security Perimeter exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Network Security Perimeter.
  const GetNetworkSecurityPerimeterResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetNetworkSecurityPerimeterResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
