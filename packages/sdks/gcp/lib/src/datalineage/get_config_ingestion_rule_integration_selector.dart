// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigIngestionRuleIntegrationSelector {
  /// Integration to which the rule applies. Possible values: ["DATAPROC", "LOOKER_CORE"]
  final pulumi.Input<String> integration;

  /// Creates a new [GetConfigIngestionRuleIntegrationSelector].
  /// [integration] Integration to which the rule applies. Possible values: ["DATAPROC", "LOOKER_CORE"]
  const GetConfigIngestionRuleIntegrationSelector({
    required this.integration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integration': integration,
    };
  }

  factory GetConfigIngestionRuleIntegrationSelector.fromMap(Map<String, dynamic> map) {
    return GetConfigIngestionRuleIntegrationSelector(
      integration: pulumi.Input.fromValue(map['integration'] as String),
    );
  }
}
