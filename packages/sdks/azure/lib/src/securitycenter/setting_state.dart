// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Setting resources.
class SettingState {
  /// Boolean flag to enable/disable data access.
  final pulumi.Input<bool>? enabled;
  /// The setting to manage. Possible values are `MCAS` , `WDATP`, `WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW`, `WDATP_UNIFIED_SOLUTION` and `Sentinel`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? settingName;

  /// Creates a new [SettingState].
  /// [enabled] Boolean flag to enable/disable data access.
  /// [settingName] The setting to manage. Possible values are `MCAS` , `WDATP`, `WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW`, `WDATP_UNIFIED_SOLUTION` and `Sentinel`. Changing this forces a new resource to be created.
  const SettingState({
    this.enabled,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'settingName': ?settingName,
    };
  }

  factory SettingState.fromMap(Map<String, dynamic> map) {
    return SettingState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      settingName: (() { final guardedValue = map['settingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
