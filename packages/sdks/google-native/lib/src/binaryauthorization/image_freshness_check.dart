// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An image freshness check, which rejects images that were uploaded before the set number of days ago to the supported repositories.
class ImageFreshnessCheck {
  /// The max number of days that is allowed since the image was uploaded. Must be greater than zero.
  final pulumi.Input<int> maxUploadAgeDays;

  /// Creates a new [ImageFreshnessCheck].
  /// [maxUploadAgeDays] The max number of days that is allowed since the image was uploaded. Must be greater than zero.
  ImageFreshnessCheck({
    required this.maxUploadAgeDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUploadAgeDays': maxUploadAgeDays,
    };
  }

  factory ImageFreshnessCheck.fromMap(Map<String, dynamic> map) {
    return ImageFreshnessCheck(
      maxUploadAgeDays: (map['maxUploadAgeDays'] as int).input(),
    );
  }
}

