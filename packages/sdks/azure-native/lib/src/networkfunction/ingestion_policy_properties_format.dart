// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_sources_properties_format.dart';

/// Ingestion Policy properties.
class IngestionPolicyPropertiesFormat {
  /// Ingestion Sources.
  final pulumi.Input<List<IngestionSourcesPropertiesFormat>>? ingestionSources;
  /// The ingestion type.
  final pulumi.Input<String>? ingestionType;

  /// Creates a new [IngestionPolicyPropertiesFormat].
  /// [ingestionSources] Ingestion Sources.
  /// [ingestionType] The ingestion type.
  IngestionPolicyPropertiesFormat({
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
      ingestionSources: map['ingestionSources'] == null ? null : (pulumi.Input.decodeList<IngestionSourcesPropertiesFormat>(map['ingestionSources']!, (value) => IngestionSourcesPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingestionType: map['ingestionType'] == null ? null : (map['ingestionType']! as String).input(),
    );
  }
}

