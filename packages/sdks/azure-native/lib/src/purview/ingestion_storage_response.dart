// ignore_for_file: unused_element, unnecessary_cast


/// Ingestion Storage Account Info
class IngestionStorageResponse {
  /// Gets or sets the Id.
  final String id;
  /// Gets or sets the primary endpoint.
  final String primaryEndpoint;
  /// Gets or sets the public network access setting
  final String? publicNetworkAccess;

  /// Creates a new [IngestionStorageResponse].
  /// [id] Gets or sets the Id.
  /// [primaryEndpoint] Gets or sets the primary endpoint.
  /// [publicNetworkAccess] Gets or sets the public network access setting
  IngestionStorageResponse({
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
      id: map['id'] as String,
      primaryEndpoint: map['primaryEndpoint'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

