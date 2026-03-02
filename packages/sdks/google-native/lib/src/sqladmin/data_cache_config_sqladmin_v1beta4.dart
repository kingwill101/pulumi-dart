// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data cache configurations.
class DataCacheConfigSqladminV1beta4 {
  /// Whether data cache is enabled for the instance.
  final pulumi.Input<bool>? dataCacheEnabled;

  /// Creates a new [DataCacheConfigSqladminV1beta4].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfigSqladminV1beta4({
    this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': ?dataCacheEnabled,
    };
  }

  factory DataCacheConfigSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigSqladminV1beta4(
      dataCacheEnabled: map['dataCacheEnabled'] == null ? null : (map['dataCacheEnabled'] as bool).input(),
    );
  }
}

