// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_ingestion_rule_integration_selector.dart';
import 'get_config_ingestion_rule_lineage_enablement.dart';

class GetConfigIngestionRule {
  /// Selects which integration this rule applies to.
  final pulumi.Input<List<GetConfigIngestionRuleIntegrationSelector>> integrationSelectors;
  /// Configures lineage ingestion enablement for this scope.
  final pulumi.Input<List<GetConfigIngestionRuleLineageEnablement>> lineageEnablements;

  /// Creates a new [GetConfigIngestionRule].
  /// [integrationSelectors] Selects which integration this rule applies to.
  /// [lineageEnablements] Configures lineage ingestion enablement for this scope.
  const GetConfigIngestionRule({
    required this.integrationSelectors,
    required this.lineageEnablements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationSelectors': pulumi.Input.mapInputValue<List<GetConfigIngestionRuleIntegrationSelector>, List<Map<String, dynamic>>>(integrationSelectors, (value) => pulumi.Input.encodeList<GetConfigIngestionRuleIntegrationSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lineageEnablements': pulumi.Input.mapInputValue<List<GetConfigIngestionRuleLineageEnablement>, List<Map<String, dynamic>>>(lineageEnablements, (value) => pulumi.Input.encodeList<GetConfigIngestionRuleLineageEnablement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetConfigIngestionRule.fromMap(Map<String, dynamic> map) {
    return GetConfigIngestionRule(
      integrationSelectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConfigIngestionRuleIntegrationSelector>(map['integrationSelectors']!, (value) => GetConfigIngestionRuleIntegrationSelector.fromMap((value as Map).cast<String, dynamic>()))),
      lineageEnablements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConfigIngestionRuleLineageEnablement>(map['lineageEnablements']!, (value) => GetConfigIngestionRuleLineageEnablement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
