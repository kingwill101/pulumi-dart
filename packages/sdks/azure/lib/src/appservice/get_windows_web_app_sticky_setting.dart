// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppStickySetting {
  /// A list of `appSetting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>> appSettingNames;
  /// A list of `connectionString` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>> connectionStringNames;

  /// Creates a new [GetWindowsWebAppStickySetting].
  /// [appSettingNames] A list of `appSetting` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connectionString` names that the Windows Web App will not swap between Slots when a swap operation is triggered.
  const GetWindowsWebAppStickySetting({
    required this.appSettingNames,
    required this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': appSettingNames,
      'connectionStringNames': connectionStringNames,
    };
  }

  factory GetWindowsWebAppStickySetting.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppStickySetting(
      appSettingNames: pulumi.Input.fromValue((map['appSettingNames'] as List).cast<String>()),
      connectionStringNames: pulumi.Input.fromValue((map['connectionStringNames'] as List).cast<String>()),
    );
  }
}
