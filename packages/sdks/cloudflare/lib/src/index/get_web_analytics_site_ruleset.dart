// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWebAnalyticsSiteRuleset {
  /// Whether the ruleset is enabled.
  final pulumi.Input<bool> enabled;
  /// The Web Analytics ruleset identifier.
  final pulumi.Input<String> id;
  final pulumi.Input<String> zoneName;
  /// The zone identifier.
  final pulumi.Input<String> zoneTag;

  /// Creates a new [GetWebAnalyticsSiteRuleset].
  /// [enabled] Whether the ruleset is enabled.
  /// [id] The Web Analytics ruleset identifier.
  /// [zoneName] Required.
  /// [zoneTag] The zone identifier.
  const GetWebAnalyticsSiteRuleset({
    required this.enabled,
    required this.id,
    required this.zoneName,
    required this.zoneTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'zoneName': zoneName,
      'zoneTag': zoneTag,
    };
  }

  factory GetWebAnalyticsSiteRuleset.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSiteRuleset(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
      zoneTag: pulumi.Input.fromValue(map['zoneTag'] as String),
    );
  }
}
