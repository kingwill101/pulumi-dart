// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of all usage signals that Data Catalog stores. Note: Usually, these signals are updated daily. In rare cases, an update may fail but will be performed again on the next day.
class GoogleCloudDatacatalogV1UsageSignal {
  /// Common usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D", "Lifetime"}`.
  final pulumi.Input<Map<String, String>>? commonUsageWithinTimeRange;
  /// Favorite count in the source system.
  final pulumi.Input<String>? favoriteCount;
  /// The end timestamp of the duration of usage statistics.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GoogleCloudDatacatalogV1UsageSignal].
  /// [commonUsageWithinTimeRange] Common usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D", "Lifetime"}`.
  /// [favoriteCount] Favorite count in the source system.
  /// [updateTime] The end timestamp of the duration of usage statistics.
  const GoogleCloudDatacatalogV1UsageSignal({
    this.commonUsageWithinTimeRange,
    this.favoriteCount,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonUsageWithinTimeRange': ?commonUsageWithinTimeRange,
      'favoriteCount': ?favoriteCount,
      'updateTime': ?updateTime,
    };
  }

  factory GoogleCloudDatacatalogV1UsageSignal.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1UsageSignal(
      commonUsageWithinTimeRange: (() { final guardedValue = map['commonUsageWithinTimeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      favoriteCount: (() { final guardedValue = map['favoriteCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
