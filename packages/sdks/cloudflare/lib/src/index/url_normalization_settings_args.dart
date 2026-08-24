// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_url_normalization_settings_url_normalization_settings_args_doc}
/// The set of arguments for UrlNormalizationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_url_normalization_settings_url_normalization_settings_args_doc}
class UrlNormalizationSettingsArgs {
  /// The scope of the URL normalization.
  /// Available values: "incoming", "both", "none".
  final pulumi.Input<String> scope;
  /// The type of URL normalization performed by Cloudflare.
  /// Available values: "cloudflare", "rfc3986".
  final pulumi.Input<String> type;
  /// The unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [UrlNormalizationSettingsArgs].
  /// [scope] The scope of the URL normalization.
  /// [type] The type of URL normalization performed by Cloudflare.
  /// [zoneId] The unique ID of the zone.
  const UrlNormalizationSettingsArgs({
    required this.scope,
    required this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'type': type,
      'zoneId': zoneId,
    };
  }

  factory UrlNormalizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return UrlNormalizationSettingsArgs(
      scope: pulumi.Input.fromValue(map['scope'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
