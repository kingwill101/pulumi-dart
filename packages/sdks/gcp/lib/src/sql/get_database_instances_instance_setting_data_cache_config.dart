// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingDataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final pulumi.Input<bool> dataCacheEnabled;

  /// Creates a new [GetDatabaseInstancesInstanceSettingDataCacheConfig].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  const GetDatabaseInstancesInstanceSettingDataCacheConfig({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': dataCacheEnabled,
    };
  }

  factory GetDatabaseInstancesInstanceSettingDataCacheConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingDataCacheConfig(
      dataCacheEnabled: pulumi.Input.fromValue(map['dataCacheEnabled'] as bool),
    );
  }
}

