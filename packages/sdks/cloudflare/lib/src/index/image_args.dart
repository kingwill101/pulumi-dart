// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_index_image_image_args_doc}
class ImageArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Can set the creator field with an internal user ID.
  final pulumi.Input<String?>? creator;
  /// An image binary data. Only needed when type is uploading a file.
  final pulumi.Input<String?>? file;
  /// An optional custom unique identifier for your image.
  final pulumi.Input<String> imageId;
  /// User modifiable key-value store. Can use used for keeping references to another system of record for managing images.
  final pulumi.Input<String?>? metadata;
  /// Indicates whether the image requires a signature token for the access.
  final pulumi.Input<bool?>? requireSignedUrls;
  /// A URL to fetch an image from origin. Only needed when type is uploading from a URL.
  final pulumi.Input<String?>? url;

  /// Creates a new [ImageArgs].
  /// [accountId] Account identifier tag.
  /// [creator] Can set the creator field with an internal user ID.
  /// [file] An image binary data. Only needed when type is uploading a file.
  /// [imageId] An optional custom unique identifier for your image.
  /// [metadata] User modifiable key-value store. Can use used for keeping references to another system of record for managing images.
  /// [requireSignedUrls] Indicates whether the image requires a signature token for the access.
  /// [url] A URL to fetch an image from origin. Only needed when type is uploading from a URL.
  const ImageArgs({
    required this.accountId,
    this.creator,
    this.file,
    required this.imageId,
    this.metadata,
    this.requireSignedUrls,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'creator': ?creator,
      'file': ?file,
      'imageId': imageId,
      'metadata': ?metadata,
      'requireSignedUrls': ?requireSignedUrls,
      'url': ?url,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireSignedUrls: (() { final guardedValue = map['requireSignedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
