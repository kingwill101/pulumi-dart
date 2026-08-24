// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAnalyticsSiteRuleset {
  /// Whether the ruleset is enabled.
  final pulumi.Input<bool?>? enabled;
  /// The Web Analytics ruleset identifier.
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? zoneName;
  /// The zone identifier.
  final pulumi.Input<String?>? zoneTag;

  /// Creates a new [WebAnalyticsSiteRuleset].
  /// [enabled] Whether the ruleset is enabled.
  /// [id] The Web Analytics ruleset identifier.
  /// [zoneName] Optional.
  /// [zoneTag] The zone identifier.
  const WebAnalyticsSiteRuleset({
    this.enabled,
    this.id,
    this.zoneName,
    this.zoneTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'zoneName': ?zoneName,
      'zoneTag': ?zoneTag,
    };
  }

  factory WebAnalyticsSiteRuleset.fromMap(Map<String, dynamic> map) {
    return WebAnalyticsSiteRuleset(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneTag: (() { final guardedValue = map['zoneTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
