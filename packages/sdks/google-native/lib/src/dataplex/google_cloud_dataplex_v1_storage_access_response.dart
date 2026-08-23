// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the access mechanism of the data within its storage location.
class GoogleCloudDataplexV1StorageAccessResponse {
  /// Describes the read access mechanism of the data. Not user settable.
  final pulumi.Input<String> read;

  /// Creates a new [GoogleCloudDataplexV1StorageAccessResponse].
  /// [read] Describes the read access mechanism of the data. Not user settable.
  const GoogleCloudDataplexV1StorageAccessResponse({
    required this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read,
    };
  }

  factory GoogleCloudDataplexV1StorageAccessResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageAccessResponse(
      read: pulumi.Input.fromValue(map['read'] as String),
    );
  }
}
