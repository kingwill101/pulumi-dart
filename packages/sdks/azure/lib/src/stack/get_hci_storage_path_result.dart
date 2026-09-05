// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHciStoragePath.
class GetHciStoragePathResult {
  /// The ID of the Custom Location where the Stack HCI Storage Path exists.
  final String? customLocationId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Stack HCI Storage Path exists.
  final String? location;
  final String? name;
  /// The file path on the disk where the Stack HCI Storage Path was created.
  final String? path;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Stack HCI Storage Path.
  final Map<String, String>? tags;

  /// Creates a new [GetHciStoragePathResult].
  /// [customLocationId] The ID of the Custom Location where the Stack HCI Storage Path exists.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Stack HCI Storage Path exists.
  /// [name] Optional.
  /// [path] The file path on the disk where the Stack HCI Storage Path was created.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Stack HCI Storage Path.
  const GetHciStoragePathResult({
    this.customLocationId,
    this.id,
    this.location,
    this.name,
    this.path,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'path': ?path,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetHciStoragePathResult.fromMap(Map<String, dynamic> map) {
    return GetHciStoragePathResult(
      customLocationId: (() { final guardedValue = map['customLocationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
