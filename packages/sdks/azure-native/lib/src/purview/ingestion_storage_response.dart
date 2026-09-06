// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingestion Storage Account Info
class IngestionStorageResponse {
  /// Gets or sets the Id.
  final pulumi.Input<String> id;
  /// Gets or sets the primary endpoint.
  final pulumi.Input<String> primaryEndpoint;
  /// Gets or sets the public network access setting
  final pulumi.Input<String?>? publicNetworkAccess;

  /// Creates a new [IngestionStorageResponse].
  /// [id] Gets or sets the Id.
  /// [primaryEndpoint] Gets or sets the primary endpoint.
  /// [publicNetworkAccess] Gets or sets the public network access setting
  const IngestionStorageResponse({
    required this.id,
    required this.primaryEndpoint,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'primaryEndpoint': primaryEndpoint,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory IngestionStorageResponse.fromMap(Map<String, dynamic> map) {
    return IngestionStorageResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      primaryEndpoint: pulumi.Input.fromValue(map['primaryEndpoint'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
