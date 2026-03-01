// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppStickySettings {
  /// A list of `app_setting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final List<String>? appSettingNames;
  /// A list of `connection_string` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final List<String>? connectionStringNames;

  /// Creates a new [WindowsFunctionAppStickySettings].
  /// [appSettingNames] A list of `app_setting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connection_string` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  WindowsFunctionAppStickySettings({
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
      appSettingNames: map['appSettingNames'] == null ? null : (map['appSettingNames'] as List).cast<String>(),
      connectionStringNames: map['connectionStringNames'] == null ? null : (map['connectionStringNames'] as List).cast<String>(),
    );
  }
}

