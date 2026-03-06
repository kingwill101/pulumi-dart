// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API call volume range and the percentage of revenue to share with the developer when the total number of API calls is within the range.
class GoogleCloudApigeeV1RevenueShareRangeResponse {
  /// Ending value of the range. Set to 0 or `null` for the last range of values.
  final pulumi.Input<String> end;
  /// Percentage of the revenue to be shared with the developer. For example, to share 21 percent of the total revenue with the developer, set this value to 21. Specify a decimal number with a maximum of two digits following the decimal point.
  final pulumi.Input<double> sharePercentage;
  /// Starting value of the range. Set to 0 or `null` for the initial range of values.
  final pulumi.Input<String> start;

  /// Creates a new [GoogleCloudApigeeV1RevenueShareRangeResponse].
  /// [end] Ending value of the range. Set to 0 or `null` for the last range of values.
  /// [sharePercentage] Percentage of the revenue to be shared with the developer. For example, to share 21 percent of the total revenue with the developer, set this value to 21. Specify a decimal number with a maximum of two digits following the decimal point.
  /// [start] Starting value of the range. Set to 0 or `null` for the initial range of values.
  const GoogleCloudApigeeV1RevenueShareRangeResponse({
    required this.end,
    required this.sharePercentage,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'sharePercentage': sharePercentage,
      'start': start,
    };
  }

  factory GoogleCloudApigeeV1RevenueShareRangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1RevenueShareRangeResponse(
      end: pulumi.Input.fromValue(map['end'] as String),
      sharePercentage: pulumi.Input.fromValue(map['sharePercentage'] as double),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}

