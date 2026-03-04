// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of all usage signals that we store in Data Catalog.
class GoogleCloudDatacatalogV1beta1UsageSignalResponse {
  /// The timestamp of the end of the usage statistics duration.
  final pulumi.Input<String> updateTime;

  /// Usage statistics over each of the pre-defined time ranges, supported strings for time ranges are {"24H", "7D", "30D"}.
  final pulumi.Input<Map<String, String>> usageWithinTimeRange;

  /// Creates a new [GoogleCloudDatacatalogV1beta1UsageSignalResponse].
  /// [updateTime] The timestamp of the end of the usage statistics duration.
  /// [usageWithinTimeRange] Usage statistics over each of the pre-defined time ranges, supported strings for time ranges are {"24H", "7D", "30D"}.
  GoogleCloudDatacatalogV1beta1UsageSignalResponse({
    required this.updateTime,
    required this.usageWithinTimeRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateTime': updateTime,
      'usageWithinTimeRange': usageWithinTimeRange,
    };
  }

  factory GoogleCloudDatacatalogV1beta1UsageSignalResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1beta1UsageSignalResponse(
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      usageWithinTimeRange: pulumi.Input.fromValue(
        (map['usageWithinTimeRange'] as Map).cast<String, String>(),
      ),
    );
  }
}
