// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_authenticated_origin_pulls_settings_get_authenticated_origin_pulls_settings_args_doc}
/// Arguments for getAuthenticatedOriginPullsSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_authenticated_origin_pulls_settings_get_authenticated_origin_pulls_settings_args_doc}
class GetAuthenticatedOriginPullsSettingsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsSettingsArgs].
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsSettingsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsSettingsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
