// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectContentsBucketObject {
  /// The content of the object.
  final pulumi.Input<String> content;
  /// Base64 encoded version of the object content.
  /// Use this when dealing with binary data.
  final pulumi.Input<String> contentBase64;
  /// Base64 encoded SHA512 checksum of file content.
  final pulumi.Input<String> contentBase64sha512;
  /// Hex encoded SHA512 checksum of file content.
  final pulumi.Input<String> contentHexsha512;
  /// [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data.
  final pulumi.Input<String> contentType;
  /// A url reference to download this object.
  final pulumi.Input<String> mediaLink;
  /// The name of the object.
  final pulumi.Input<String> name;
  /// A url reference to this object.
  final pulumi.Input<String> selfLink;

  /// Creates a new [GetBucketObjectContentsBucketObject].
  /// [content] The content of the object.
  /// [contentBase64] Base64 encoded version of the object content.
  /// [contentBase64sha512] Base64 encoded SHA512 checksum of file content.
  /// [contentHexsha512] Hex encoded SHA512 checksum of file content.
  /// [contentType] [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data.
  /// [mediaLink] A url reference to download this object.
  /// [name] The name of the object.
  /// [selfLink] A url reference to this object.
  const GetBucketObjectContentsBucketObject({
    required this.content,
    required this.contentBase64,
    required this.contentBase64sha512,
    required this.contentHexsha512,
    required this.contentType,
    required this.mediaLink,
    required this.name,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentBase64': contentBase64,
      'contentBase64sha512': contentBase64sha512,
      'contentHexsha512': contentHexsha512,
      'contentType': contentType,
      'mediaLink': mediaLink,
      'name': name,
      'selfLink': selfLink,
    };
  }

  factory GetBucketObjectContentsBucketObject.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentsBucketObject(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentBase64: pulumi.Input.fromValue(map['contentBase64'] as String),
      contentBase64sha512: pulumi.Input.fromValue(map['contentBase64sha512'] as String),
      contentHexsha512: pulumi.Input.fromValue(map['contentHexsha512'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      mediaLink: pulumi.Input.fromValue(map['mediaLink'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
    );
  }
}
