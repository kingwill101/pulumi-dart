// ignore_for_file: unused_element, unnecessary_cast


/// Ingestion policy properties.
class IngestionSourcesPropertiesFormat {
  /// Resource ID.
  final String? resourceId;
  /// Ingestion source type.
  final String? sourceType;

  /// Creates a new [IngestionSourcesPropertiesFormat].
  /// [resourceId] Resource ID.
  /// [sourceType] Ingestion source type.
  IngestionSourcesPropertiesFormat({
    this.resourceId,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'sourceType': ?sourceType,
    };
  }

  factory IngestionSourcesPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return IngestionSourcesPropertiesFormat(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}

