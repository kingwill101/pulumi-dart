// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppStickySettings {
  /// A list of `appSetting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>?>? appSettingNames;
  /// A list of `connectionString` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>?>? connectionStringNames;

  /// Creates a new [WindowsFunctionAppStickySettings].
  /// [appSettingNames] A list of `appSetting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connectionString` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  const WindowsFunctionAppStickySettings({
    this.appSettingNames,
    this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'connectionStringNames': ?connectionStringNames,
    };
  }

  factory WindowsFunctionAppStickySettings.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppStickySettings(
      appSettingNames: (() { final guardedValue = map['appSettingNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionStringNames: (() { final guardedValue = map['connectionStringNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
