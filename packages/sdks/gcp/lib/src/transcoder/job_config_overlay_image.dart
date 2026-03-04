// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigOverlayImage {
  /// URI of the image in Cloud Storage. For example, gs://bucket/inputs/image.png.
  final pulumi.Input<String> uri;

  /// Creates a new [JobConfigOverlayImage].
  /// [uri] URI of the image in Cloud Storage. For example, gs://bucket/inputs/image.png.
  JobConfigOverlayImage({required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory JobConfigOverlayImage.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlayImage(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
