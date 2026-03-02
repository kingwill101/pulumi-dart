// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data cache configurations.
class DataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final pulumi.Input<bool>? dataCacheEnabled;

  /// Creates a new [DataCacheConfig].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfig({
    this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': ?dataCacheEnabled,
    };
  }

  factory DataCacheConfig.fromMap(Map<String, dynamic> map) {
    return DataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] == null ? null : (map['dataCacheEnabled']! as bool).input(),
    );
  }
}

