// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppStickySetting {
  /// A list of `app_setting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final List<String> appSettingNames;
  /// A list of `connection_string` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final List<String> connectionStringNames;

  /// Creates a new [GetWindowsFunctionAppStickySetting].
  /// [appSettingNames] A list of `app_setting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connection_string` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  GetWindowsFunctionAppStickySetting({
    required this.appSettingNames,
    required this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': appSettingNames,
      'connectionStringNames': connectionStringNames,
    };
  }

  factory GetWindowsFunctionAppStickySetting.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppStickySetting(
      appSettingNames: (map['appSettingNames'] as List).cast<String>(),
      connectionStringNames: (map['connectionStringNames'] as List).cast<String>(),
    );
  }
}

