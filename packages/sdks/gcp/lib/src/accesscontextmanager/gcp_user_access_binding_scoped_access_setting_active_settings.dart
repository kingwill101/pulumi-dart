// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_scoped_access_setting_active_settings_session_settings.dart';

class GcpUserAccessBindingScopedAccessSettingActiveSettings {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<List<String>>? accessLevels;
  /// Optional. Session settings applied to user access on a given AccessScope.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings>? sessionSettings;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingActiveSettings].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [sessionSettings] Optional. Session settings applied to user access on a given AccessScope.
  const GcpUserAccessBindingScopedAccessSettingActiveSettings({
    this.accessLevels,
    this.sessionSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?accessLevels,
      'sessionSettings': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings, Map<String, dynamic>>(sessionSettings, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingActiveSettings.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingActiveSettings(
      accessLevels: (() { final guardedValue = map['accessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sessionSettings: (() { final guardedValue = map['sessionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

