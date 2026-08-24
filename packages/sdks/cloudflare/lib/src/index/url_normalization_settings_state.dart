// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UrlNormalizationSettings resources.
class UrlNormalizationSettingsState {
  /// The scope of the URL normalization.
  /// Available values: "incoming", "both", "none".
  final pulumi.Input<String?>? scope;
  /// The type of URL normalization performed by Cloudflare.
  /// Available values: "cloudflare", "rfc3986".
  final pulumi.Input<String?>? type;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [UrlNormalizationSettingsState].
  /// [scope] The scope of the URL normalization.
  /// [type] The type of URL normalization performed by Cloudflare.
  /// [zoneId] The unique ID of the zone.
  const UrlNormalizationSettingsState({
    this.scope,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory UrlNormalizationSettingsState.fromMap(Map<String, dynamic> map) {
    return UrlNormalizationSettingsState(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
