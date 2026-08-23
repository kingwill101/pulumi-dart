// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingDataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final pulumi.Input<bool> dataCacheEnabled;

  /// Creates a new [GetDatabaseInstanceSettingDataCacheConfig].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  const GetDatabaseInstanceSettingDataCacheConfig({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': dataCacheEnabled,
    };
  }

  factory GetDatabaseInstanceSettingDataCacheConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingDataCacheConfig(
      dataCacheEnabled: pulumi.Input.fromValue(map['dataCacheEnabled'] as bool),
    );
  }
}
