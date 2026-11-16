// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSalesforceDataCloudCrossCloudCacheOptions {
  /// Whether cross-cloud caching is enabled for queries through BigQuery.
  /// When enabled, read data and metadata are cached, which can improve performance
  /// and reduce network egress costs for cross-cloud queries.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ConnectionSalesforceDataCloudCrossCloudCacheOptions].
  /// [enabled] Whether cross-cloud caching is enabled for queries through BigQuery.
  const ConnectionSalesforceDataCloudCrossCloudCacheOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConnectionSalesforceDataCloudCrossCloudCacheOptions.fromMap(Map<String, dynamic> map) {
    return ConnectionSalesforceDataCloudCrossCloudCacheOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
