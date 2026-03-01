// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppStickySetting {
  /// A list of `app_setting` names that the Linux Web App will not swap between Slots when a swap operation is triggered.
  final List<String> appSettingNames;
  /// A list of `connection_string` names that the Linux Web App will not swap between Slots when a swap operation is triggered.
  final List<String> connectionStringNames;

  /// Creates a new [GetLinuxWebAppStickySetting].
  /// [appSettingNames] A list of `app_setting` names that the Linux Web App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connection_string` names that the Linux Web App will not swap between Slots when a swap operation is triggered.
  GetLinuxWebAppStickySetting({
    required this.appSettingNames,
    required this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': appSettingNames,
      'connectionStringNames': connectionStringNames,
    };
  }

  factory GetLinuxWebAppStickySetting.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppStickySetting(
      appSettingNames: (map['appSettingNames'] as List).cast<String>(),
      connectionStringNames: (map['connectionStringNames'] as List).cast<String>(),
    );
  }
}

