// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_ingestion_rule_integration_selector.dart';
import 'config_ingestion_rule_lineage_enablement.dart';

class ConfigIngestionRule {
  /// Selects which integration this rule applies to.
  /// Structure is documented below.
  final pulumi.Input<ConfigIngestionRuleIntegrationSelector> integrationSelector;
  /// Configures lineage ingestion enablement for this scope.
  /// Structure is documented below.
  final pulumi.Input<ConfigIngestionRuleLineageEnablement> lineageEnablement;

  /// Creates a new [ConfigIngestionRule].
  /// [integrationSelector] Selects which integration this rule applies to.
  /// [lineageEnablement] Configures lineage ingestion enablement for this scope.
  const ConfigIngestionRule({
    required this.integrationSelector,
    required this.lineageEnablement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationSelector': pulumi.Input.mapInputValue<ConfigIngestionRuleIntegrationSelector, Map<String, dynamic>>(integrationSelector, (value) => value.toMap()),
      'lineageEnablement': pulumi.Input.mapInputValue<ConfigIngestionRuleLineageEnablement, Map<String, dynamic>>(lineageEnablement, (value) => value.toMap()),
    };
  }

  factory ConfigIngestionRule.fromMap(Map<String, dynamic> map) {
    return ConfigIngestionRule(
      integrationSelector: pulumi.Input.fromValue(ConfigIngestionRuleIntegrationSelector.fromMap((map['integrationSelector']! as Map).cast<String, dynamic>())),
      lineageEnablement: pulumi.Input.fromValue(ConfigIngestionRuleLineageEnablement.fromMap((map['lineageEnablement']! as Map).cast<String, dynamic>())),
    );
  }
}
