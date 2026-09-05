// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSharedImageGallery.
class GetSharedImageGalleryResult {
  /// A description for the Shared Image Gallery.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of Shared Image names within this Shared Image Gallery.
  final List<String>? imageNames;
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags which are assigned to the Shared Image Gallery.
  final Map<String, String>? tags;
  /// The unique name assigned to the Shared Image Gallery.
  final String? uniqueName;

  /// Creates a new [GetSharedImageGalleryResult].
  /// [description] A description for the Shared Image Gallery.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageNames] A list of Shared Image names within this Shared Image Gallery.
  /// [location] Optional.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags which are assigned to the Shared Image Gallery.
  /// [uniqueName] The unique name assigned to the Shared Image Gallery.
  const GetSharedImageGalleryResult({
    this.description,
    this.id,
    this.imageNames,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'imageNames': ?imageNames,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'uniqueName': ?uniqueName,
    };
  }

  factory GetSharedImageGalleryResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageGalleryResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageNames: (() { final guardedValue = map['imageNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      uniqueName: (() { final guardedValue = map['uniqueName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
