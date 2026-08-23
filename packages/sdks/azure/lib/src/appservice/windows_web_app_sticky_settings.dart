// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppStickySettings {
  /// A list of `appSetting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>>? appSettingNames;
  /// A list of `connectionString` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>>? connectionStringNames;

  /// Creates a new [WindowsWebAppStickySettings].
  /// [appSettingNames] A list of `appSetting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connectionString` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  const WindowsWebAppStickySettings({
    this.appSettingNames,
    this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'connectionStringNames': ?connectionStringNames,
    };
  }

  factory WindowsWebAppStickySettings.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppStickySettings(
      appSettingNames: (() { final guardedValue = map['appSettingNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionStringNames: (() { final guardedValue = map['connectionStringNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
