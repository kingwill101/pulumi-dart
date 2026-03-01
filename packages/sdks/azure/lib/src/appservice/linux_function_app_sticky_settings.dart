// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppStickySettings {
  /// A list of `app_setting` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  final List<String>? appSettingNames;
  /// A list of `connection_string` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  final List<String>? connectionStringNames;

  /// Creates a new [LinuxFunctionAppStickySettings].
  /// [appSettingNames] A list of `app_setting` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connection_string` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  LinuxFunctionAppStickySettings({
    this.appSettingNames,
    this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'connectionStringNames': ?connectionStringNames,
    };
  }

  factory LinuxFunctionAppStickySettings.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppStickySettings(
      appSettingNames: map['appSettingNames'] == null ? null : (map['appSettingNames'] as List).cast<String>(),
      connectionStringNames: map['connectionStringNames'] == null ? null : (map['connectionStringNames'] as List).cast<String>(),
    );
  }
}

