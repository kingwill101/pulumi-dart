// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Catalog item thumbnail/detail image.
class GoogleCloudRecommendationengineV1beta1ImageResponse {
  /// Optional. Height of the image in number of pixels.
  final pulumi.Input<int> height;
  /// URL of the image with a length limit of 5 KiB.
  final pulumi.Input<String> uri;
  /// Optional. Width of the image in number of pixels.
  final pulumi.Input<int> width;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ImageResponse].
  /// [height] Optional. Height of the image in number of pixels.
  /// [uri] URL of the image with a length limit of 5 KiB.
  /// [width] Optional. Width of the image in number of pixels.
  GoogleCloudRecommendationengineV1beta1ImageResponse({
    required this.height,
    required this.uri,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'uri': uri,
      'width': width,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1ImageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ImageResponse(
      height: (map['height'] as int).input(),
      uri: (map['uri'] as String).input(),
      width: (map['width'] as int).input(),
    );
  }
}

