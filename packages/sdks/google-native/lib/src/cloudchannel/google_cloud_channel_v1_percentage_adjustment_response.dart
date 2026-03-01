// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_decimal_response.dart';

/// An adjustment that applies a flat markup or markdown to an entire bill.
class GoogleCloudChannelV1PercentageAdjustmentResponse {
  /// The percentage of the bill to adjust. For example: Mark down by 1% => "-1.00" Mark up by 1% => "1.00" Pass-Through => "0.00"
  final GoogleTypeDecimalResponse percentage;

  /// Creates a new [GoogleCloudChannelV1PercentageAdjustmentResponse].
  /// [percentage] The percentage of the bill to adjust. For example: Mark down by 1% => "-1.00" Mark up by 1% => "1.00" Pass-Through => "0.00"
  GoogleCloudChannelV1PercentageAdjustmentResponse({
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage.toMap(),
    };
  }

  factory GoogleCloudChannelV1PercentageAdjustmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1PercentageAdjustmentResponse(
      percentage: GoogleTypeDecimalResponse.fromMap((map['percentage'] as Map).cast<String, dynamic>()),
    );
  }
}

