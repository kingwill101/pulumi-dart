// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigOverlayImage {
  /// URI of the image in Cloud Storage. For example, gs://bucket/inputs/image.png.
  final pulumi.Input<String> uri;

  /// Creates a new [JobTemplateConfigOverlayImage].
  /// [uri] URI of the image in Cloud Storage. For example, gs://bucket/inputs/image.png.
  const JobTemplateConfigOverlayImage({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory JobTemplateConfigOverlayImage.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlayImage(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
