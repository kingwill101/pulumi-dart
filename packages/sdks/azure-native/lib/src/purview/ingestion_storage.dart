// ignore_for_file: unused_element, unnecessary_cast


/// Ingestion Storage Account Info
class IngestionStorage {
  /// Gets or sets the public network access setting
  final String? publicNetworkAccess;

  /// Creates a new [IngestionStorage].
  /// [publicNetworkAccess] Gets or sets the public network access setting
  IngestionStorage({
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory IngestionStorage.fromMap(Map<String, dynamic> map) {
    return IngestionStorage(
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

