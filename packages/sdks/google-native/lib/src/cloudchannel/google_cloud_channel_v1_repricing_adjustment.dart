// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_percentage_adjustment.dart';

/// A type that represents the various adjustments you can apply to a bill.
class GoogleCloudChannelV1RepricingAdjustment {
  /// Flat markup or markdown on an entire bill.
  final pulumi.Input<GoogleCloudChannelV1PercentageAdjustment>? percentageAdjustment;

  /// Creates a new [GoogleCloudChannelV1RepricingAdjustment].
  /// [percentageAdjustment] Flat markup or markdown on an entire bill.
  const GoogleCloudChannelV1RepricingAdjustment({
    this.percentageAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageAdjustment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1PercentageAdjustment, Map<String, dynamic>>(percentageAdjustment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1RepricingAdjustment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingAdjustment(
      percentageAdjustment: (() { final guardedValue = map['percentageAdjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudChannelV1PercentageAdjustment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

