// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource that represents a payload hosted on Google Cloud Storage.
class GCSPayloadInfoResponse {
  /// The import job format.
  final pulumi.Input<String> format;
  /// The payload path in Google Cloud Storage.
  final pulumi.Input<String> path;

  /// Creates a new [GCSPayloadInfoResponse].
  /// [format] The import job format.
  /// [path] The payload path in Google Cloud Storage.
  const GCSPayloadInfoResponse({
    required this.format,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'path': path,
    };
  }

  factory GCSPayloadInfoResponse.fromMap(Map<String, dynamic> map) {
    return GCSPayloadInfoResponse(
      format: pulumi.Input.fromValue(map['format'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
