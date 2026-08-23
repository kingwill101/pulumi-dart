// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigIngestionRuleLineageEnablement {
  /// Whether ingestion of lineage should be enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConfigIngestionRuleLineageEnablement].
  /// [enabled] Whether ingestion of lineage should be enabled.
  const ConfigIngestionRuleLineageEnablement({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfigIngestionRuleLineageEnablement.fromMap(Map<String, dynamic> map) {
    return ConfigIngestionRuleLineageEnablement(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
