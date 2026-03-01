// ignore_for_file: unused_element, unnecessary_cast


/// Ingestion policy properties.
class IngestionSourcesPropertiesFormatResponse {
  /// Resource ID.
  final String? resourceId;
  /// Ingestion source type.
  final String? sourceType;

  /// Creates a new [IngestionSourcesPropertiesFormatResponse].
  /// [resourceId] Resource ID.
  /// [sourceType] Ingestion source type.
  IngestionSourcesPropertiesFormatResponse({
    this.resourceId,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'sourceType': ?sourceType,
    };
  }

  factory IngestionSourcesPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return IngestionSourcesPropertiesFormatResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}

