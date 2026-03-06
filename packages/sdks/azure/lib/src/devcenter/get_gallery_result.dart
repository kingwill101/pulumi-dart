// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGallery.
class GetGalleryResult {
  final String devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The ID of the Shared Gallery connected to the Dev Center Gallery.
  final String sharedGalleryId;

  /// Creates a new [GetGalleryResult].
  /// [devCenterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [sharedGalleryId] The ID of the Shared Gallery connected to the Dev Center Gallery.
  const GetGalleryResult({
    required this.devCenterId,
    required this.id,
    required this.name,
    required this.sharedGalleryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'id': id,
      'name': name,
      'sharedGalleryId': sharedGalleryId,
    };
  }

  factory GetGalleryResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryResult(
      devCenterId: map['devCenterId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      sharedGalleryId: map['sharedGalleryId'] as String,
    );
  }
}

