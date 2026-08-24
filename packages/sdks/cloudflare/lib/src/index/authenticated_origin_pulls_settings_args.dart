// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_authenticated_origin_pulls_settings_authenticated_origin_pulls_settings_args_doc}
/// The set of arguments for AuthenticatedOriginPullsSettings.
/// {@endtemplate}
/// {@macro pulumi_index_authenticated_origin_pulls_settings_authenticated_origin_pulls_settings_args_doc}
class AuthenticatedOriginPullsSettingsArgs {
  /// Indicates whether zone-level authenticated origin pulls is enabled.
  final pulumi.Input<bool> enabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [AuthenticatedOriginPullsSettingsArgs].
  /// [enabled] Indicates whether zone-level authenticated origin pulls is enabled.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsSettingsArgs({
    required this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'zoneId': zoneId,
    };
  }

  factory AuthenticatedOriginPullsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsSettingsArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
