// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectsBucketObject {
  /// [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data.
  final pulumi.Input<String> contentType;
  /// A url reference to download this object.
  final pulumi.Input<String> mediaLink;
  /// The name of the object.
  final pulumi.Input<String> name;
  /// A url reference to this object.
  final pulumi.Input<String> selfLink;
  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket object.
  final pulumi.Input<String> storageClass;

  /// Creates a new [GetBucketObjectsBucketObject].
  /// [contentType] [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data.
  /// [mediaLink] A url reference to download this object.
  /// [name] The name of the object.
  /// [selfLink] A url reference to this object.
  /// [storageClass] The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket object.
  const GetBucketObjectsBucketObject({
    required this.contentType,
    required this.mediaLink,
    required this.name,
    required this.selfLink,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'mediaLink': mediaLink,
      'name': name,
      'selfLink': selfLink,
      'storageClass': storageClass,
    };
  }

  factory GetBucketObjectsBucketObject.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsBucketObject(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      mediaLink: pulumi.Input.fromValue(map['mediaLink'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}

