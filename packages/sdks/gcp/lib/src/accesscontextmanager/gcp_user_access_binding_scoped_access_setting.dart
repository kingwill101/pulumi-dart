// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_scoped_access_setting_active_settings.dart';
import 'gcp_user_access_binding_scoped_access_setting_dry_run_settings.dart';
import 'gcp_user_access_binding_scoped_access_setting_scope.dart';

class GcpUserAccessBindingScopedAccessSetting {
  /// Optional. Access settings for this scoped access settings. This field may be empty if `dryRunSettings` is set.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingActiveSettings>? activeSettings;
  /// Optional. Dry-run access settings for this scoped access settings. This field may be empty if `activeSettings` is set. Cannot contain session settings.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingDryRunSettings>? dryRunSettings;
  /// Optional. Application, etc. to which the access settings will be applied to. Implicitly, this is the scoped access settings key; as such, it must be unique and non-empty.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingScope>? scope;

  /// Creates a new [GcpUserAccessBindingScopedAccessSetting].
  /// [activeSettings] Optional. Access settings for this scoped access settings. This field may be empty if `dryRunSettings` is set.
  /// [dryRunSettings] Optional. Dry-run access settings for this scoped access settings. This field may be empty if `activeSettings` is set. Cannot contain session settings.
  /// [scope] Optional. Application, etc. to which the access settings will be applied to. Implicitly, this is the scoped access settings key; as such, it must be unique and non-empty.
  const GcpUserAccessBindingScopedAccessSetting({
    this.activeSettings,
    this.dryRunSettings,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSettings': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingActiveSettings, Map<String, dynamic>>(activeSettings, (value) => value.toMap()),
      'dryRunSettings': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingDryRunSettings, Map<String, dynamic>>(dryRunSettings, (value) => value.toMap()),
      'scope': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingScopedAccessSetting.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSetting(
      activeSettings: (() { final guardedValue = map['activeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingActiveSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dryRunSettings: (() { final guardedValue = map['dryRunSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingDryRunSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
