// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_quality_rules_rule.dart';

/// Result data returned by getDataQualityRules.
class GetDataQualityRulesResult {
  final String dataScanId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String? project;
  /// (Computed) The list of generated data quality rules. For more details, please see the datascan page.
  final List<GetDataQualityRulesRule> rules;

  /// Creates a new [GetDataQualityRulesResult].
  /// [dataScanId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [rules] (Computed) The list of generated data quality rules. For more details, please see the datascan page.
  GetDataQualityRulesResult({
    required this.dataScanId,
    required this.id,
    this.location,
    this.project,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataScanId': dataScanId,
      'id': id,
      'location': ?location,
      'project': ?project,
      'rules': pulumi.Input.encodeList<GetDataQualityRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetDataQualityRulesResult.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesResult(
      dataScanId: map['dataScanId'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      project: map['project'] == null ? null : map['project']! as String,
      rules: pulumi.Input.decodeList<GetDataQualityRulesRule>(map['rules'], (value) => GetDataQualityRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

