// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data cache configurations.
class DataCacheConfigResponseSqladminV1beta4 {
  /// Whether data cache is enabled for the instance.
  final pulumi.Input<bool> dataCacheEnabled;

  /// Creates a new [DataCacheConfigResponseSqladminV1beta4].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfigResponseSqladminV1beta4({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': dataCacheEnabled,
    };
  }

  factory DataCacheConfigResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponseSqladminV1beta4(
      dataCacheEnabled: pulumi.Input.fromValue(map['dataCacheEnabled'] as bool),
    );
  }
}

