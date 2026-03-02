// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_big_query_source.dart';
import 'google_cloud_datalabeling_v1beta1_classification_metadata.dart';
import 'google_cloud_datalabeling_v1beta1_gcs_source.dart';
import 'google_cloud_datalabeling_v1beta1_input_config_annotation_type.dart';
import 'google_cloud_datalabeling_v1beta1_input_config_data_type.dart';
import 'google_cloud_datalabeling_v1beta1_text_metadata.dart';

/// The configuration of input data, including data type, location, etc.
class GoogleCloudDatalabelingV1beta1InputConfig {
  /// Optional. The type of annotation to be performed on this data. You must specify this field if you are using this InputConfig in an EvaluationJob.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1InputConfigAnnotationType>? annotationType;
  /// Source located in BigQuery. You must specify this field if you are using this InputConfig in an EvaluationJob.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1BigQuerySource>? bigquerySource;
  /// Optional. Metadata about annotations for the input. You must specify this field if you are using this InputConfig in an EvaluationJob for a model version that performs classification.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1ClassificationMetadata>? classificationMetadata;
  /// Data type must be specifed when user tries to import data.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1InputConfigDataType> dataType;
  /// Source located in Cloud Storage.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1GcsSource>? gcsSource;
  /// Required for text import, as language code must be specified.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1TextMetadata>? textMetadata;

  /// Creates a new [GoogleCloudDatalabelingV1beta1InputConfig].
  /// [annotationType] Optional. The type of annotation to be performed on this data. You must specify this field if you are using this InputConfig in an EvaluationJob.
  /// [bigquerySource] Source located in BigQuery. You must specify this field if you are using this InputConfig in an EvaluationJob.
  /// [classificationMetadata] Optional. Metadata about annotations for the input. You must specify this field if you are using this InputConfig in an EvaluationJob for a model version that performs classification.
  /// [dataType] Data type must be specifed when user tries to import data.
  /// [gcsSource] Source located in Cloud Storage.
  /// [textMetadata] Required for text import, as language code must be specified.
  GoogleCloudDatalabelingV1beta1InputConfig({
    this.annotationType,
    this.bigquerySource,
    this.classificationMetadata,
    required this.dataType,
    this.gcsSource,
    this.textMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1InputConfigAnnotationType, String>(annotationType, (value) => value.value),
      'bigquerySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1BigQuerySource, Map<String, dynamic>>(bigquerySource, (value) => value.toMap()),
      'classificationMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1ClassificationMetadata, Map<String, dynamic>>(classificationMetadata, (value) => value.toMap()),
      'dataType': pulumi.Input.mapInputValue<GoogleCloudDatalabelingV1beta1InputConfigDataType, String>(dataType, (value) => value.value),
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1GcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'textMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1TextMetadata, Map<String, dynamic>>(textMetadata, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1InputConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1InputConfig(
      annotationType: map['annotationType'] == null ? null : (GoogleCloudDatalabelingV1beta1InputConfigAnnotationType.fromValue(map['annotationType'] as String)).input(),
      bigquerySource: map['bigquerySource'] == null ? null : (GoogleCloudDatalabelingV1beta1BigQuerySource.fromMap((map['bigquerySource'] as Map).cast<String, dynamic>())).input(),
      classificationMetadata: map['classificationMetadata'] == null ? null : (GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromMap((map['classificationMetadata'] as Map).cast<String, dynamic>())).input(),
      dataType: (GoogleCloudDatalabelingV1beta1InputConfigDataType.fromValue(map['dataType'] as String)).input(),
      gcsSource: map['gcsSource'] == null ? null : (GoogleCloudDatalabelingV1beta1GcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())).input(),
      textMetadata: map['textMetadata'] == null ? null : (GoogleCloudDatalabelingV1beta1TextMetadata.fromMap((map['textMetadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

