// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_period.dart';
import 'google_cloud_channel_v1_renewal_settings_payment_plan.dart';

/// Renewal settings for renewable Offers.
class GoogleCloudChannelV1RenewalSettings {
  /// If false, the plan will be completed at the end date.
  final pulumi.Input<bool>? enableRenewal;
  /// Describes how frequently the reseller will be billed, such as once per month.
  final pulumi.Input<GoogleCloudChannelV1Period>? paymentCycle;
  /// Describes how a reseller will be billed.
  final pulumi.Input<GoogleCloudChannelV1RenewalSettingsPaymentPlan>? paymentPlan;
  /// If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.
  final pulumi.Input<bool>? resizeUnitCount;

  /// Creates a new [GoogleCloudChannelV1RenewalSettings].
  /// [enableRenewal] If false, the plan will be completed at the end date.
  /// [paymentCycle] Describes how frequently the reseller will be billed, such as once per month.
  /// [paymentPlan] Describes how a reseller will be billed.
  /// [resizeUnitCount] If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.
  GoogleCloudChannelV1RenewalSettings({
    this.enableRenewal,
    this.paymentCycle,
    this.paymentPlan,
    this.resizeUnitCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRenewal': ?enableRenewal,
      'paymentCycle': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1Period, Map<String, dynamic>>(paymentCycle, (value) => value.toMap()),
      'paymentPlan': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1RenewalSettingsPaymentPlan, String>(paymentPlan, (value) => value.value),
      'resizeUnitCount': ?resizeUnitCount,
    };
  }

  factory GoogleCloudChannelV1RenewalSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RenewalSettings(
      enableRenewal: map['enableRenewal'] == null ? null : (map['enableRenewal']! as bool).input(),
      paymentCycle: map['paymentCycle'] == null ? null : (GoogleCloudChannelV1Period.fromMap((map['paymentCycle']! as Map).cast<String, dynamic>())).input(),
      paymentPlan: map['paymentPlan'] == null ? null : (GoogleCloudChannelV1RenewalSettingsPaymentPlan.fromValue(map['paymentPlan']! as String)).input(),
      resizeUnitCount: map['resizeUnitCount'] == null ? null : (map['resizeUnitCount']! as bool).input(),
    );
  }
}

