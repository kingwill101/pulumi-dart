// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProfile.
class GetProfileResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the resource exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The pricing related information of current CDN profile.
  final String sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetProfileResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the resource exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sku] The pricing related information of current CDN profile.
  /// [tags] A mapping of tags assigned to the resource.
  GetProfileResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

