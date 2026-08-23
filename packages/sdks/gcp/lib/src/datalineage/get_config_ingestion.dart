// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_ingestion_rule.dart';

class GetConfigIngestion {
  /// List of ingestion rules for Data Lineage ingestion.
  final pulumi.Input<List<GetConfigIngestionRule>> rules;

  /// Creates a new [GetConfigIngestion].
  /// [rules] List of ingestion rules for Data Lineage ingestion.
  const GetConfigIngestion({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<GetConfigIngestionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetConfigIngestionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetConfigIngestion.fromMap(Map<String, dynamic> map) {
    return GetConfigIngestion(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConfigIngestionRule>(map['rules']!, (value) => GetConfigIngestionRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
