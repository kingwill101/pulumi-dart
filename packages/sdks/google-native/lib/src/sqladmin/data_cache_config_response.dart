// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data cache configurations.
class DataCacheConfigResponse {
  /// Whether data cache is enabled for the instance.
  final pulumi.Input<bool> dataCacheEnabled;

  /// Creates a new [DataCacheConfigResponse].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfigResponse({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': dataCacheEnabled,
    };
  }

  factory DataCacheConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponse(
      dataCacheEnabled: (map['dataCacheEnabled'] as bool).input(),
    );
  }
}

