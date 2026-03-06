// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source of the Cloud Storage file to be imported.
class GoogleCloudDatalabelingV1beta1GcsSourceResponse {
  /// The input URI of source file. This must be a Cloud Storage path (`gs://...`).
  final pulumi.Input<String> inputUri;
  /// The format of the source file. Only "text/csv" is supported.
  final pulumi.Input<String> mimeType;

  /// Creates a new [GoogleCloudDatalabelingV1beta1GcsSourceResponse].
  /// [inputUri] The input URI of source file. This must be a Cloud Storage path (`gs://...`).
  /// [mimeType] The format of the source file. Only "text/csv" is supported.
  const GoogleCloudDatalabelingV1beta1GcsSourceResponse({
    required this.inputUri,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputUri': inputUri,
      'mimeType': mimeType,
    };
  }

  factory GoogleCloudDatalabelingV1beta1GcsSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1GcsSourceResponse(
      inputUri: pulumi.Input.fromValue(map['inputUri'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}

