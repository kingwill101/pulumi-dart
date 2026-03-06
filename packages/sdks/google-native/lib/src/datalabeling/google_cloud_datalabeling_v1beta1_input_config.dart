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
  const GoogleCloudDatalabelingV1beta1InputConfig({
    this.annotationType,
    this.bigquerySource,
    this.classificationMetadata,
    required this.dataType,
    this.gcsSource,
    this.textMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1InputConfigAnnotationType, String>(annotationType, (value) => value.wireValue),
      'bigquerySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1BigQuerySource, Map<String, dynamic>>(bigquerySource, (value) => value.toMap()),
      'classificationMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1ClassificationMetadata, Map<String, dynamic>>(classificationMetadata, (value) => value.toMap()),
      'dataType': pulumi.Input.mapInputValue<GoogleCloudDatalabelingV1beta1InputConfigDataType, String>(dataType, (value) => value.wireValue),
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1GcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'textMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1TextMetadata, Map<String, dynamic>>(textMetadata, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1InputConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1InputConfig(
      annotationType: (() { final guardedValue = map['annotationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1InputConfigAnnotationType.fromValue(guardedValue as String)); })(),
      bigquerySource: (() { final guardedValue = map['bigquerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1BigQuerySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      classificationMetadata: (() { final guardedValue = map['classificationMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataType: pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1InputConfigDataType.fromValue(map['dataType']! as String)),
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1GcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textMetadata: (() { final guardedValue = map['textMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1TextMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

