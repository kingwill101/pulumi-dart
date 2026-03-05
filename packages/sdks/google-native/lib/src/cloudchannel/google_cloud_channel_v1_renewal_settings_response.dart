// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_period_response.dart';

/// Renewal settings for renewable Offers.
class GoogleCloudChannelV1RenewalSettingsResponse {
  /// If false, the plan will be completed at the end date.
  final pulumi.Input<bool> enableRenewal;
  /// Describes how frequently the reseller will be billed, such as once per month.
  final pulumi.Input<GoogleCloudChannelV1PeriodResponse> paymentCycle;
  /// Describes how a reseller will be billed.
  final pulumi.Input<String> paymentPlan;
  /// If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.
  final pulumi.Input<bool> resizeUnitCount;

  /// Creates a new [GoogleCloudChannelV1RenewalSettingsResponse].
  /// [enableRenewal] If false, the plan will be completed at the end date.
  /// [paymentCycle] Describes how frequently the reseller will be billed, such as once per month.
  /// [paymentPlan] Describes how a reseller will be billed.
  /// [resizeUnitCount] If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.
  GoogleCloudChannelV1RenewalSettingsResponse({
    required this.enableRenewal,
    required this.paymentCycle,
    required this.paymentPlan,
    required this.resizeUnitCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRenewal': enableRenewal,
      'paymentCycle': pulumi.Input.mapInputValue<GoogleCloudChannelV1PeriodResponse, Map<String, dynamic>>(paymentCycle, (value) => value.toMap()),
      'paymentPlan': paymentPlan,
      'resizeUnitCount': resizeUnitCount,
    };
  }

  factory GoogleCloudChannelV1RenewalSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RenewalSettingsResponse(
      enableRenewal: pulumi.Input.fromValue(map['enableRenewal'] as bool),
      paymentCycle: pulumi.Input.fromValue(GoogleCloudChannelV1PeriodResponse.fromMap((map['paymentCycle']! as Map).cast<String, dynamic>())),
      paymentPlan: pulumi.Input.fromValue(map['paymentPlan'] as String),
      resizeUnitCount: pulumi.Input.fromValue(map['resizeUnitCount'] as bool),
    );
  }
}

