// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Product image. Recommendations AI and Retail Search do not use product images to improve prediction and search results. However, product images can be returned in results, and are shown in prediction or search previews in the console.
class GoogleCloudRetailV2ImageResponse {
  /// Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<int> height;
  /// URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  final pulumi.Input<String> uri;
  /// Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<int> width;

  /// Creates a new [GoogleCloudRetailV2ImageResponse].
  /// [height] Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [uri] URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  /// [width] Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  GoogleCloudRetailV2ImageResponse({
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

  factory GoogleCloudRetailV2ImageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2ImageResponse(
      height: (map['height'] as int).input(),
      uri: (map['uri'] as String).input(),
      width: (map['width'] as int).input(),
    );
  }
}

