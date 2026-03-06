// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_percentage_adjustment_response.dart';

/// A type that represents the various adjustments you can apply to a bill.
class GoogleCloudChannelV1RepricingAdjustmentResponse {
  /// Flat markup or markdown on an entire bill.
  final pulumi.Input<GoogleCloudChannelV1PercentageAdjustmentResponse> percentageAdjustment;

  /// Creates a new [GoogleCloudChannelV1RepricingAdjustmentResponse].
  /// [percentageAdjustment] Flat markup or markdown on an entire bill.
  const GoogleCloudChannelV1RepricingAdjustmentResponse({
    required this.percentageAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageAdjustment': pulumi.Input.mapInputValue<GoogleCloudChannelV1PercentageAdjustmentResponse, Map<String, dynamic>>(percentageAdjustment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1RepricingAdjustmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingAdjustmentResponse(
      percentageAdjustment: pulumi.Input.fromValue(GoogleCloudChannelV1PercentageAdjustmentResponse.fromMap((map['percentageAdjustment']! as Map).cast<String, dynamic>())),
    );
  }
}

