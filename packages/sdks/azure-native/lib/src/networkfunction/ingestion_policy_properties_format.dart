// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_sources_properties_format.dart';

/// Ingestion Policy properties.
class IngestionPolicyPropertiesFormat {
  /// Ingestion Sources.
  final pulumi.Input<List<IngestionSourcesPropertiesFormat>?>? ingestionSources;
  /// The ingestion type.
  final pulumi.Input<dynamic>? ingestionType;

  /// Creates a new [IngestionPolicyPropertiesFormat].
  /// [ingestionSources] Ingestion Sources.
  /// [ingestionType] The ingestion type.
  const IngestionPolicyPropertiesFormat({
    this.ingestionSources,
    this.ingestionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionSources': ?pulumi.Input.mapOptionalInputValue<List<IngestionSourcesPropertiesFormat>, List<Map<String, dynamic>>>(ingestionSources, (value) => pulumi.Input.encodeList<IngestionSourcesPropertiesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingestionType': ?ingestionType,
    };
  }

  factory IngestionPolicyPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return IngestionPolicyPropertiesFormat(
      ingestionSources: (() { final guardedValue = map['ingestionSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngestionSourcesPropertiesFormat>(guardedValue, (value) => IngestionSourcesPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingestionType: (() { final guardedValue = map['ingestionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
