// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// Account identifier tag.
  final String? accountId;
  /// Can set the creator field with an internal user ID.
  final String? creator;
  /// Image file name.
  final String? filename;
  /// Image unique identifier.
  final String? id;
  /// Image unique identifier.
  final String? imageId;
  /// User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  final String? meta;
  /// Indicates whether the image can be a accessed only using it's UID. If set to true, a signed token needs to be generated with a signing key to view the image.
  final bool? requireSignedUrls;
  /// When the media item was uploaded.
  final String? uploaded;
  /// Object specifying available variants for an image.
  final List<String>? variants;

  /// Creates a new [GetImageResult].
  /// [accountId] Account identifier tag.
  /// [creator] Can set the creator field with an internal user ID.
  /// [filename] Image file name.
  /// [id] Image unique identifier.
  /// [imageId] Image unique identifier.
  /// [meta] User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  /// [requireSignedUrls] Indicates whether the image can be a accessed only using it's UID. If set to true, a signed token needs to be generated with a signing key to view the image.
  /// [uploaded] When the media item was uploaded.
  /// [variants] Object specifying available variants for an image.
  const GetImageResult({
    this.accountId,
    this.creator,
    this.filename,
    this.id,
    this.imageId,
    this.meta,
    this.requireSignedUrls,
    this.uploaded,
    this.variants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'creator': ?creator,
      'filename': ?filename,
      'id': ?id,
      'imageId': ?imageId,
      'meta': ?meta,
      'requireSignedUrls': ?requireSignedUrls,
      'uploaded': ?uploaded,
      'variants': ?variants,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requireSignedUrls: (() { final guardedValue = map['requireSignedUrls']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      uploaded: (() { final guardedValue = map['uploaded']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variants: (() { final guardedValue = map['variants']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
