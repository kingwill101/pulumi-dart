// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Can set the creator field with an internal user ID.
  final pulumi.Input<String?>? creator;
  /// An image binary data. Only needed when type is uploading a file.
  final pulumi.Input<String?>? file;
  /// Image file name.
  final pulumi.Input<String?>? filename;
  /// An optional custom unique identifier for your image.
  final pulumi.Input<String?>? imageId;
  /// User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  final pulumi.Input<String?>? meta;
  /// User modifiable key-value store. Can use used for keeping references to another system of record for managing images.
  final pulumi.Input<String?>? metadata;
  /// Indicates whether the image requires a signature token for the access.
  final pulumi.Input<bool?>? requireSignedUrls;
  /// When the media item was uploaded.
  final pulumi.Input<String?>? uploaded;
  /// A URL to fetch an image from origin. Only needed when type is uploading from a URL.
  final pulumi.Input<String?>? url;
  /// Object specifying available variants for an image.
  final pulumi.Input<List<String>?>? variants;

  /// Creates a new [ImageState].
  /// [accountId] Account identifier tag.
  /// [creator] Can set the creator field with an internal user ID.
  /// [file] An image binary data. Only needed when type is uploading a file.
  /// [filename] Image file name.
  /// [imageId] An optional custom unique identifier for your image.
  /// [meta] User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  /// [metadata] User modifiable key-value store. Can use used for keeping references to another system of record for managing images.
  /// [requireSignedUrls] Indicates whether the image requires a signature token for the access.
  /// [uploaded] When the media item was uploaded.
  /// [url] A URL to fetch an image from origin. Only needed when type is uploading from a URL.
  /// [variants] Object specifying available variants for an image.
  const ImageState({
    this.accountId,
    this.creator,
    this.file,
    this.filename,
    this.imageId,
    this.meta,
    this.metadata,
    this.requireSignedUrls,
    this.uploaded,
    this.url,
    this.variants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'creator': ?creator,
      'file': ?file,
      'filename': ?filename,
      'imageId': ?imageId,
      'meta': ?meta,
      'metadata': ?metadata,
      'requireSignedUrls': ?requireSignedUrls,
      'uploaded': ?uploaded,
      'url': ?url,
      'variants': ?variants,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireSignedUrls: (() { final guardedValue = map['requireSignedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uploaded: (() { final guardedValue = map['uploaded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variants: (() { final guardedValue = map['variants']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
