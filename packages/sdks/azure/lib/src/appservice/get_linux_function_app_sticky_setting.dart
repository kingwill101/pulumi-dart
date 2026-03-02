// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppStickySetting {
  /// A list of `app_setting` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>> appSettingNames;
  /// A list of `connection_string` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  final pulumi.Input<List<String>> connectionStringNames;

  /// Creates a new [GetLinuxFunctionAppStickySetting].
  /// [appSettingNames] A list of `app_setting` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  /// [connectionStringNames] A list of `connection_string` names that the Linux Function App will not swap between Slots when a swap operation is triggered.
  GetLinuxFunctionAppStickySetting({
    required this.appSettingNames,
    required this.connectionStringNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': appSettingNames,
      'connectionStringNames': connectionStringNames,
    };
  }

  factory GetLinuxFunctionAppStickySetting.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppStickySetting(
      appSettingNames: ((map['appSettingNames'] as List).cast<String>()).input(),
      connectionStringNames: ((map['connectionStringNames'] as List).cast<String>()).input(),
    );
  }
}

