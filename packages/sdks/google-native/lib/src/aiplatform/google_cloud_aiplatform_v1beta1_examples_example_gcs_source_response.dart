// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_gcs_source_response.dart';

/// The Cloud Storage input instances.
class GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceResponse {
  /// The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
  final pulumi.Input<String> dataFormat;
  /// The Cloud Storage location for the input instances.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsSourceResponse> gcsSource;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceResponse].
  /// [dataFormat] The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
  /// [gcsSource] The Cloud Storage location for the input instances.
  GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceResponse({
    required this.dataFormat,
    required this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFormat': dataFormat,
      'gcsSource': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1GcsSourceResponse, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceResponse(
      dataFormat: pulumi.Input.fromValue(map['dataFormat'] as String),
      gcsSource: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1GcsSourceResponse.fromMap((map['gcsSource']! as Map).cast<String, dynamic>())),
    );
  }
}

