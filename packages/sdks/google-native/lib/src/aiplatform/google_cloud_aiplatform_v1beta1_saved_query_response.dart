// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A SavedQuery is a view of the dataset. It references a subset of annotations by problem type and filters.
class GoogleCloudAiplatformV1beta1SavedQueryResponse {
  /// Filters on the Annotations in the dataset.
  final pulumi.Input<String> annotationFilter;

  /// Number of AnnotationSpecs in the context of the SavedQuery.
  final pulumi.Input<int> annotationSpecCount;

  /// Timestamp when this SavedQuery was created.
  final pulumi.Input<String> createTime;

  /// The user-defined name of the SavedQuery. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Used to perform a consistent read-modify-write update. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String> etag;

  /// Some additional information about the SavedQuery.
  final pulumi.Input<dynamic> metadata;

  /// Resource name of the SavedQuery.
  final pulumi.Input<String> name;

  /// Problem type of the SavedQuery. Allowed values: * IMAGE_CLASSIFICATION_SINGLE_LABEL * IMAGE_CLASSIFICATION_MULTI_LABEL * IMAGE_BOUNDING_POLY * IMAGE_BOUNDING_BOX * TEXT_CLASSIFICATION_SINGLE_LABEL * TEXT_CLASSIFICATION_MULTI_LABEL * TEXT_EXTRACTION * TEXT_SENTIMENT * VIDEO_CLASSIFICATION * VIDEO_OBJECT_TRACKING
  final pulumi.Input<String> problemType;

  /// If the Annotations belonging to the SavedQuery can be used for AutoML training.
  final pulumi.Input<bool> supportAutomlTraining;

  /// Timestamp when SavedQuery was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudAiplatformV1beta1SavedQueryResponse].
  /// [annotationFilter] Filters on the Annotations in the dataset.
  /// [annotationSpecCount] Number of AnnotationSpecs in the context of the SavedQuery.
  /// [createTime] Timestamp when this SavedQuery was created.
  /// [displayName] The user-defined name of the SavedQuery. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] Used to perform a consistent read-modify-write update. If not set, a blind "overwrite" update happens.
  /// [metadata] Some additional information about the SavedQuery.
  /// [name] Resource name of the SavedQuery.
  /// [problemType] Problem type of the SavedQuery. Allowed values: * IMAGE_CLASSIFICATION_SINGLE_LABEL * IMAGE_CLASSIFICATION_MULTI_LABEL * IMAGE_BOUNDING_POLY * IMAGE_BOUNDING_BOX * TEXT_CLASSIFICATION_SINGLE_LABEL * TEXT_CLASSIFICATION_MULTI_LABEL * TEXT_EXTRACTION * TEXT_SENTIMENT * VIDEO_CLASSIFICATION * VIDEO_OBJECT_TRACKING
  /// [supportAutomlTraining] If the Annotations belonging to the SavedQuery can be used for AutoML training.
  /// [updateTime] Timestamp when SavedQuery was last updated.
  GoogleCloudAiplatformV1beta1SavedQueryResponse({
    required this.annotationFilter,
    required this.annotationSpecCount,
    required this.createTime,
    required this.displayName,
    required this.etag,
    required this.metadata,
    required this.name,
    required this.problemType,
    required this.supportAutomlTraining,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationFilter': annotationFilter,
      'annotationSpecCount': annotationSpecCount,
      'createTime': createTime,
      'displayName': displayName,
      'etag': etag,
      'metadata': metadata,
      'name': name,
      'problemType': problemType,
      'supportAutomlTraining': supportAutomlTraining,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudAiplatformV1beta1SavedQueryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1SavedQueryResponse(
      annotationFilter: pulumi.Input.fromValue(
        map['annotationFilter'] as String,
      ),
      annotationSpecCount: pulumi.Input.fromValue(
        map['annotationSpecCount'] as int,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      metadata: pulumi.Input.fromValue(map['metadata']),
      name: pulumi.Input.fromValue(map['name'] as String),
      problemType: pulumi.Input.fromValue(map['problemType'] as String),
      supportAutomlTraining: pulumi.Input.fromValue(
        map['supportAutomlTraining'] as bool,
      ),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
