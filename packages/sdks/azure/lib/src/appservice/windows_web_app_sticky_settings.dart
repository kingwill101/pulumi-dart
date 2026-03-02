// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppStickySettings {
  /// A list of `app_setting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>>? appSettingNames;
  /// A list of `connection_string` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>>? connectionStringNames;

  /// Creates a new [WindowsWebAppStickySettings].
  /// [appSettingNames] A list of `app_setting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connection_string` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  WindowsWebAppStickySettings({
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
      appSettingNames: map['appSettingNames'] == null ? null : ((map['appSettingNames'] as List).cast<String>()).input(),
      connectionStringNames: map['connectionStringNames'] == null ? null : ((map['connectionStringNames'] as List).cast<String>()).input(),
    );
  }
}

