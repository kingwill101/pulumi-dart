// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
class DataCacheConfigResponse {
  /// Optional. Whether data cache is enabled for the instance.
  final pulumi.Input<bool> dataCacheEnabled;

  /// Creates a new [DataCacheConfigResponse].
  /// [dataCacheEnabled] Optional. Whether data cache is enabled for the instance.
  const DataCacheConfigResponse({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': dataCacheEnabled,
    };
  }

  factory DataCacheConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponse(
      dataCacheEnabled: pulumi.Input.fromValue(map['dataCacheEnabled'] as bool),
    );
  }
}

