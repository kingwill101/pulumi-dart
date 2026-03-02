// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of all usage signals that Data Catalog stores. Note: Usually, these signals are updated daily. In rare cases, an update may fail but will be performed again on the next day.
class GoogleCloudDatacatalogV1UsageSignalResponse {
  /// Common usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D", "Lifetime"}`.
  final pulumi.Input<Map<String, String>> commonUsageWithinTimeRange;
  /// Favorite count in the source system.
  final pulumi.Input<String> favoriteCount;
  /// The end timestamp of the duration of usage statistics.
  final pulumi.Input<String> updateTime;
  /// BigQuery usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D"}`.
  final pulumi.Input<Map<String, String>> usageWithinTimeRange;

  /// Creates a new [GoogleCloudDatacatalogV1UsageSignalResponse].
  /// [commonUsageWithinTimeRange] Common usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D", "Lifetime"}`.
  /// [favoriteCount] Favorite count in the source system.
  /// [updateTime] The end timestamp of the duration of usage statistics.
  /// [usageWithinTimeRange] BigQuery usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D"}`.
  GoogleCloudDatacatalogV1UsageSignalResponse({
    required this.commonUsageWithinTimeRange,
    required this.favoriteCount,
    required this.updateTime,
    required this.usageWithinTimeRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonUsageWithinTimeRange': commonUsageWithinTimeRange,
      'favoriteCount': favoriteCount,
      'updateTime': updateTime,
      'usageWithinTimeRange': usageWithinTimeRange,
    };
  }

  factory GoogleCloudDatacatalogV1UsageSignalResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1UsageSignalResponse(
      commonUsageWithinTimeRange: ((map['commonUsageWithinTimeRange'] as Map).cast<String, String>()).input(),
      favoriteCount: (map['favoriteCount'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
      usageWithinTimeRange: ((map['usageWithinTimeRange'] as Map).cast<String, String>()).input(),
    );
  }
}

