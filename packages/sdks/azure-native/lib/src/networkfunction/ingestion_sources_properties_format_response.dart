// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingestion policy properties.
class IngestionSourcesPropertiesFormatResponse {
  /// Resource ID.
  final pulumi.Input<String>? resourceId;
  /// Ingestion source type.
  final pulumi.Input<String>? sourceType;

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
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType']! as String).input(),
    );
  }
}

