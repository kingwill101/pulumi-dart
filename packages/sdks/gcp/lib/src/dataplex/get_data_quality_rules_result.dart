// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_quality_rules_rule.dart';

/// Result data returned by getDataQualityRules.
class GetDataQualityRulesResult {
  final String? dataScanId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  /// (Computed) The list of generated data quality rules. For more details, please see the datascan page.
  final List<GetDataQualityRulesRule>? rules;

  /// Creates a new [GetDataQualityRulesResult].
  /// [dataScanId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [rules] (Computed) The list of generated data quality rules. For more details, please see the datascan page.
  const GetDataQualityRulesResult({
    this.dataScanId,
    this.id,
    this.location,
    this.project,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataScanId': ?dataScanId,
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataQualityRulesRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDataQualityRulesResult.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesResult(
      dataScanId: (() { final guardedValue = map['dataScanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataQualityRulesRule>(guardedValue, (value) => GetDataQualityRulesRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
