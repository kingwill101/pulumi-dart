// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigIngestionRuleIntegrationSelector {
  /// Integration to which the rule applies.
  /// Possible values are: `DATAPROC`, `LOOKER_CORE`.
  final pulumi.Input<String> integration;

  /// Creates a new [ConfigIngestionRuleIntegrationSelector].
  /// [integration] Integration to which the rule applies.
  const ConfigIngestionRuleIntegrationSelector({
    required this.integration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integration': integration,
    };
  }

  factory ConfigIngestionRuleIntegrationSelector.fromMap(Map<String, dynamic> map) {
    return ConfigIngestionRuleIntegrationSelector(
      integration: pulumi.Input.fromValue(map['integration'] as String),
    );
  }
}
