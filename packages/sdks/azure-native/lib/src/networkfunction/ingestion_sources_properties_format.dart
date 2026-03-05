// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ingestion policy properties.
class IngestionSourcesPropertiesFormat {
  /// Resource ID.
  final pulumi.Input<String>? resourceId;
  /// Ingestion source type.
  final pulumi.Input<String>? sourceType;

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
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

