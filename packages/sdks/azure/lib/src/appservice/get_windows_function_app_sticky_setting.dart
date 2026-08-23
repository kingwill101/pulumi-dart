// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppStickySetting {
  /// A list of `appSetting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>> appSettingNames;
  /// A list of `connectionString` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>> connectionStringNames;

  /// Creates a new [GetWindowsFunctionAppStickySetting].
  /// [appSettingNames] A list of `appSetting` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connectionString` names that the Windows Function App will not swap between Slots when a swap operation is triggered.
  const GetWindowsFunctionAppStickySetting({
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
      appSettingNames: pulumi.Input.fromValue((map['appSettingNames'] as List).cast<String>()),
      connectionStringNames: pulumi.Input.fromValue((map['connectionStringNames'] as List).cast<String>()),
    );
  }
}
