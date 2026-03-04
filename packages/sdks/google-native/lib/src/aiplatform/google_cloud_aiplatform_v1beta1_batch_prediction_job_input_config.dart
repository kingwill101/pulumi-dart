// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_big_query_source.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source.dart';

/// Configures the input to BatchPredictionJob. See Model.supported_input_storage_formats for Model's supported input formats, and how instances should be expressed via any of them.
class GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig {
  /// The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BigQuerySource>?
  bigquerySource;

  /// The Cloud Storage location for the input instances.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsSource>? gcsSource;

  /// The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  final pulumi.Input<String> instancesFormat;

  /// Creates a new [GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig].
  /// [bigquerySource] The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  /// [gcsSource] The Cloud Storage location for the input instances.
  /// [instancesFormat] The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig({
    this.bigquerySource,
    this.gcsSource,
    required this.instancesFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquerySource':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1BigQuerySource,
            Map<String, dynamic>
          >(bigquerySource, (value) => value.toMap()),
      'gcsSource':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1GcsSource,
            Map<String, dynamic>
          >(gcsSource, (value) => value.toMap()),
      'instancesFormat': instancesFormat,
    };
  }

  factory GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig(
      bigquerySource: (() {
        final guardedValue = map['bigquerySource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1BigQuerySource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gcsSource: (() {
        final guardedValue = map['gcsSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1GcsSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instancesFormat: pulumi.Input.fromValue(map['instancesFormat'] as String),
    );
  }
}
