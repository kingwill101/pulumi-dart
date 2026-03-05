// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_sources_properties_format_response.dart';

/// Ingestion Policy properties.
class IngestionPolicyPropertiesFormatResponse {
  /// Ingestion Sources.
  final pulumi.Input<List<IngestionSourcesPropertiesFormatResponse>>? ingestionSources;
  /// The ingestion type.
  final pulumi.Input<String>? ingestionType;

  /// Creates a new [IngestionPolicyPropertiesFormatResponse].
  /// [ingestionSources] Ingestion Sources.
  /// [ingestionType] The ingestion type.
  IngestionPolicyPropertiesFormatResponse({
    this.ingestionSources,
    this.ingestionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionSources': ?pulumi.Input.mapOptionalInputValue<List<IngestionSourcesPropertiesFormatResponse>, List<Map<String, dynamic>>>(ingestionSources, (value) => pulumi.Input.encodeList<IngestionSourcesPropertiesFormatResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingestionType': ?ingestionType,
    };
  }

  factory IngestionPolicyPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return IngestionPolicyPropertiesFormatResponse(
      ingestionSources: (() { final guardedValue = map['ingestionSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngestionSourcesPropertiesFormatResponse>(guardedValue, (value) => IngestionSourcesPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingestionType: (() { final guardedValue = map['ingestionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

