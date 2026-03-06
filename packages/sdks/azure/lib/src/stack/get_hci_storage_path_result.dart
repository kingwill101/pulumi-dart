// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHciStoragePath.
class GetHciStoragePathResult {
  /// The ID of the Custom Location where the Stack HCI Storage Path exists.
  final String customLocationId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Stack HCI Storage Path exists.
  final String location;
  final String name;
  /// The file path on the disk where the Stack HCI Storage Path was created.
  final String path;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Stack HCI Storage Path.
  final Map<String, String> tags;

  /// Creates a new [GetHciStoragePathResult].
  /// [customLocationId] The ID of the Custom Location where the Stack HCI Storage Path exists.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Stack HCI Storage Path exists.
  /// [name] Required.
  /// [path] The file path on the disk where the Stack HCI Storage Path was created.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Stack HCI Storage Path.
  const GetHciStoragePathResult({
    required this.customLocationId,
    required this.id,
    required this.location,
    required this.name,
    required this.path,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'id': id,
      'location': location,
      'name': name,
      'path': path,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetHciStoragePathResult.fromMap(Map<String, dynamic> map) {
    return GetHciStoragePathResult(
      customLocationId: map['customLocationId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

