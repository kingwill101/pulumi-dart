// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesResultImage {
  /// Can set the creator field with an internal user ID.
  final pulumi.Input<String> creator;
  /// Image file name.
  final pulumi.Input<String> filename;
  /// Image unique identifier.
  final pulumi.Input<String> id;
  /// User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  final pulumi.Input<String> meta;
  /// Indicates whether the image can be a accessed only using it's UID. If set to true, a signed token needs to be generated with a signing key to view the image.
  final pulumi.Input<bool> requireSignedUrls;
  /// When the media item was uploaded.
  final pulumi.Input<String> uploaded;
  /// Object specifying available variants for an image.
  final pulumi.Input<List<String>> variants;

  /// Creates a new [GetImagesResultImage].
  /// [creator] Can set the creator field with an internal user ID.
  /// [filename] Image file name.
  /// [id] Image unique identifier.
  /// [meta] User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  /// [requireSignedUrls] Indicates whether the image can be a accessed only using it's UID. If set to true, a signed token needs to be generated with a signing key to view the image.
  /// [uploaded] When the media item was uploaded.
  /// [variants] Object specifying available variants for an image.
  const GetImagesResultImage({
    required this.creator,
    required this.filename,
    required this.id,
    required this.meta,
    required this.requireSignedUrls,
    required this.uploaded,
    required this.variants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creator': creator,
      'filename': filename,
      'id': id,
      'meta': meta,
      'requireSignedUrls': requireSignedUrls,
      'uploaded': uploaded,
      'variants': variants,
    };
  }

  factory GetImagesResultImage.fromMap(Map<String, dynamic> map) {
    return GetImagesResultImage(
      creator: pulumi.Input.fromValue(map['creator'] as String),
      filename: pulumi.Input.fromValue(map['filename'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(map['meta'] as String),
      requireSignedUrls: pulumi.Input.fromValue(map['requireSignedUrls'] as bool),
      uploaded: pulumi.Input.fromValue(map['uploaded'] as String),
      variants: pulumi.Input.fromValue((map['variants'] as List).cast<String>()),
    );
  }
}
