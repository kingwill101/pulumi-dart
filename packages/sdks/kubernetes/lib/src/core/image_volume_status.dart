// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ImageVolumeStatus represents the image-based volume status.
class ImageVolumeStatus {
  /// ImageRef is the digest of the image used for this volume. It should have a value that's similar to the pod's status.containerStatuses[i].imageID. The ImageRef length should not exceed 256 characters.
  final pulumi.Input<String> imageRef;

  /// Creates a new [ImageVolumeStatus].
  /// [imageRef] ImageRef is the digest of the image used for this volume. It should have a value that's similar to the pod's status.containerStatuses[i].imageID. The ImageRef length should not exceed 256 characters.
  const ImageVolumeStatus({
    required this.imageRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageRef': imageRef,
    };
  }

  factory ImageVolumeStatus.fromMap(Map<String, dynamic> map) {
    return ImageVolumeStatus(
      imageRef: pulumi.Input.fromValue(map['imageRef'] as String),
    );
  }
}
