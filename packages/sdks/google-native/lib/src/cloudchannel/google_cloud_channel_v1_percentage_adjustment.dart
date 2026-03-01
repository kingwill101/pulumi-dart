// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_decimal.dart';

/// An adjustment that applies a flat markup or markdown to an entire bill.
class GoogleCloudChannelV1PercentageAdjustment {
  /// The percentage of the bill to adjust. For example: Mark down by 1% => "-1.00" Mark up by 1% => "1.00" Pass-Through => "0.00"
  final GoogleTypeDecimal? percentage;

  /// Creates a new [GoogleCloudChannelV1PercentageAdjustment].
  /// [percentage] The percentage of the bill to adjust. For example: Mark down by 1% => "-1.00" Mark up by 1% => "1.00" Pass-Through => "0.00"
  GoogleCloudChannelV1PercentageAdjustment({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage == null ? null : percentage!.toMap(),
    };
  }

  factory GoogleCloudChannelV1PercentageAdjustment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1PercentageAdjustment(
      percentage: map['percentage'] == null ? null : GoogleTypeDecimal.fromMap((map['percentage'] as Map).cast<String, dynamic>()),
    );
  }
}

