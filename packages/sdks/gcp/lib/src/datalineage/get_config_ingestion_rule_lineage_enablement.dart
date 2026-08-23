// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigIngestionRuleLineageEnablement {
  /// Whether ingestion of lineage should be enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetConfigIngestionRuleLineageEnablement].
  /// [enabled] Whether ingestion of lineage should be enabled.
  const GetConfigIngestionRuleLineageEnablement({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetConfigIngestionRuleLineageEnablement.fromMap(Map<String, dynamic> map) {
    return GetConfigIngestionRuleLineageEnablement(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
