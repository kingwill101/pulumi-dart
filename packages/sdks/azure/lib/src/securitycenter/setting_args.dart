// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_setting_setting_args_doc}
/// The set of arguments for Setting.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_setting_setting_args_doc}
class SettingArgs {
  /// Boolean flag to enable/disable data access.
  final pulumi.Input<bool> enabled;
  /// The setting to manage. Possible values are `MCAS` , `WDATP`, `WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW`, `WDATP_UNIFIED_SOLUTION` and `Sentinel`. Changing this forces a new resource to be created.
  final pulumi.Input<String> settingName;

  /// Creates a new [SettingArgs].
  /// [enabled] Boolean flag to enable/disable data access.
  /// [settingName] The setting to manage. Possible values are `MCAS` , `WDATP`, `WDATP_EXCLUDE_LINUX_PUBLIC_PREVIEW`, `WDATP_UNIFIED_SOLUTION` and `Sentinel`. Changing this forces a new resource to be created.
  const SettingArgs({
    required this.enabled,
    required this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'settingName': settingName,
    };
  }

  factory SettingArgs.fromMap(Map<String, dynamic> map) {
    return SettingArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      settingName: pulumi.Input.fromValue(map['settingName'] as String),
    );
  }
}

