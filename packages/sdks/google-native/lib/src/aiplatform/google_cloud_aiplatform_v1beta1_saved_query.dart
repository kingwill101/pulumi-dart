// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A SavedQuery is a view of the dataset. It references a subset of annotations by problem type and filters.
class GoogleCloudAiplatformV1beta1SavedQuery {
  /// The user-defined name of the SavedQuery. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Used to perform a consistent read-modify-write update. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// Some additional information about the SavedQuery.
  final pulumi.Input<dynamic>? metadata;

  /// Problem type of the SavedQuery. Allowed values: * IMAGE_CLASSIFICATION_SINGLE_LABEL * IMAGE_CLASSIFICATION_MULTI_LABEL * IMAGE_BOUNDING_POLY * IMAGE_BOUNDING_BOX * TEXT_CLASSIFICATION_SINGLE_LABEL * TEXT_CLASSIFICATION_MULTI_LABEL * TEXT_EXTRACTION * TEXT_SENTIMENT * VIDEO_CLASSIFICATION * VIDEO_OBJECT_TRACKING
  final pulumi.Input<String> problemType;

  /// Creates a new [GoogleCloudAiplatformV1beta1SavedQuery].
  /// [displayName] The user-defined name of the SavedQuery. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] Used to perform a consistent read-modify-write update. If not set, a blind "overwrite" update happens.
  /// [metadata] Some additional information about the SavedQuery.
  /// [problemType] Problem type of the SavedQuery. Allowed values: * IMAGE_CLASSIFICATION_SINGLE_LABEL * IMAGE_CLASSIFICATION_MULTI_LABEL * IMAGE_BOUNDING_POLY * IMAGE_BOUNDING_BOX * TEXT_CLASSIFICATION_SINGLE_LABEL * TEXT_CLASSIFICATION_MULTI_LABEL * TEXT_EXTRACTION * TEXT_SENTIMENT * VIDEO_CLASSIFICATION * VIDEO_OBJECT_TRACKING
  GoogleCloudAiplatformV1beta1SavedQuery({
    required this.displayName,
    this.etag,
    this.metadata,
    required this.problemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'etag': ?etag,
      'metadata': ?metadata,
      'problemType': problemType,
    };
  }

  factory GoogleCloudAiplatformV1beta1SavedQuery.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1SavedQuery(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      problemType: pulumi.Input.fromValue(map['problemType'] as String),
    );
  }
}
