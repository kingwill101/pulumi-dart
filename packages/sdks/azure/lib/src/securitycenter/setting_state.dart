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
  SettingState({
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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      settingName: map['settingName'] == null ? null : (map['settingName']! as String).input(),
    );
  }
}

