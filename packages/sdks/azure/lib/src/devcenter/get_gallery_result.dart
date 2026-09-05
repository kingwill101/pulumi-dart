// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGallery.
class GetGalleryResult {
  final String? devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The ID of the Shared Gallery connected to the Dev Center Gallery.
  final String? sharedGalleryId;

  /// Creates a new [GetGalleryResult].
  /// [devCenterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [sharedGalleryId] The ID of the Shared Gallery connected to the Dev Center Gallery.
  const GetGalleryResult({
    this.devCenterId,
    this.id,
    this.name,
    this.sharedGalleryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'id': ?id,
      'name': ?name,
      'sharedGalleryId': ?sharedGalleryId,
    };
  }

  factory GetGalleryResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryResult(
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedGalleryId: (() { final guardedValue = map['sharedGalleryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
