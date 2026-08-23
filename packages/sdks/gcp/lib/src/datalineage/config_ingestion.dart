// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_ingestion_rule.dart';

class ConfigIngestion {
  /// List of ingestion rules for Data Lineage ingestion.
  /// Structure is documented below.
  final pulumi.Input<List<ConfigIngestionRule>> rules;

  /// Creates a new [ConfigIngestion].
  /// [rules] List of ingestion rules for Data Lineage ingestion.
  const ConfigIngestion({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<ConfigIngestionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ConfigIngestionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigIngestion.fromMap(Map<String, dynamic> map) {
    return ConfigIngestion(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigIngestionRule>(map['rules']!, (value) => ConfigIngestionRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
