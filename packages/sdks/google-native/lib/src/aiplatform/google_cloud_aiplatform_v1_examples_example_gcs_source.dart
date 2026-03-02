// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_examples_example_gcs_source_data_format.dart';
import 'google_cloud_aiplatform_v1_gcs_source.dart';

/// The Cloud Storage input instances.
class GoogleCloudAiplatformV1ExamplesExampleGcsSource {
  /// The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
  final pulumi.Input<GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat>? dataFormat;
  /// The Cloud Storage location for the input instances.
  final pulumi.Input<GoogleCloudAiplatformV1GcsSource>? gcsSource;

  /// Creates a new [GoogleCloudAiplatformV1ExamplesExampleGcsSource].
  /// [dataFormat] The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
  /// [gcsSource] The Cloud Storage location for the input instances.
  GoogleCloudAiplatformV1ExamplesExampleGcsSource({
    this.dataFormat,
    this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFormat': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat, String>(dataFormat, (value) => value.value),
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1GcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ExamplesExampleGcsSource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExamplesExampleGcsSource(
      dataFormat: map['dataFormat'] == null ? null : (GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat.fromValue(map['dataFormat'] as String)).input(),
      gcsSource: map['gcsSource'] == null ? null : (GoogleCloudAiplatformV1GcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

