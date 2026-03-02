// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for classification annotations.
class GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse {
  /// Whether the classification task is multi-label or not.
  final pulumi.Input<bool> isMultiLabel;

  /// Creates a new [GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse].
  /// [isMultiLabel] Whether the classification task is multi-label or not.
  GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse({
    required this.isMultiLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isMultiLabel': isMultiLabel,
    };
  }

  factory GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse(
      isMultiLabel: (map['isMultiLabel'] as bool).input(),
    );
  }
}

