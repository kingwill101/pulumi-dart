// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';

/// Specifications of a single file in Cloud Storage.
class GoogleCloudDatacatalogV1beta1GcsFileSpecResponse {
  /// The full file path. Example: `gs://bucket_name/a/b.txt`.
  final pulumi.Input<String> filePath;
  /// Timestamps about the Cloud Storage file.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse> gcsTimestamps;
  /// The size of the file, in bytes.
  final pulumi.Input<String> sizeBytes;

  /// Creates a new [GoogleCloudDatacatalogV1beta1GcsFileSpecResponse].
  /// [filePath] The full file path. Example: `gs://bucket_name/a/b.txt`.
  /// [gcsTimestamps] Timestamps about the Cloud Storage file.
  /// [sizeBytes] The size of the file, in bytes.
  const GoogleCloudDatacatalogV1beta1GcsFileSpecResponse({
    required this.filePath,
    required this.gcsTimestamps,
    required this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': filePath,
      'gcsTimestamps': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse, Map<String, dynamic>>(gcsTimestamps, (value) => value.toMap()),
      'sizeBytes': sizeBytes,
    };
  }

  factory GoogleCloudDatacatalogV1beta1GcsFileSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1GcsFileSpecResponse(
      filePath: pulumi.Input.fromValue(map['filePath'] as String),
      gcsTimestamps: pulumi.Input.fromValue(GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap((map['gcsTimestamps']! as Map).cast<String, dynamic>())),
      sizeBytes: pulumi.Input.fromValue(map['sizeBytes'] as String),
    );
  }
}
