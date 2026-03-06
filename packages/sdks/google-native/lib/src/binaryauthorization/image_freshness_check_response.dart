// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An image freshness check, which rejects images that were uploaded before the set number of days ago to the supported repositories.
class ImageFreshnessCheckResponse {
  /// The max number of days that is allowed since the image was uploaded. Must be greater than zero.
  final pulumi.Input<int> maxUploadAgeDays;

  /// Creates a new [ImageFreshnessCheckResponse].
  /// [maxUploadAgeDays] The max number of days that is allowed since the image was uploaded. Must be greater than zero.
  const ImageFreshnessCheckResponse({
    required this.maxUploadAgeDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUploadAgeDays': maxUploadAgeDays,
    };
  }

  factory ImageFreshnessCheckResponse.fromMap(Map<String, dynamic> map) {
    return ImageFreshnessCheckResponse(
      maxUploadAgeDays: pulumi.Input.fromValue(map['maxUploadAgeDays'] as int),
    );
  }
}

