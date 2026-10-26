import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how a reseller will be billed.
enum GoogleCloudChannelV1RenewalSettingsPaymentPlan implements pulumi.PulumiEnum<String> {
  paymentPlanUnspecified("PAYMENT_PLAN_UNSPECIFIED"),
  commitment("COMMITMENT"),
  flexible("FLEXIBLE"),
  free("FREE"),
  trial("TRIAL"),
  offline("OFFLINE");

  const GoogleCloudChannelV1RenewalSettingsPaymentPlan(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudChannelV1RenewalSettingsPaymentPlan fromValue(String value) {
    for (final item in GoogleCloudChannelV1RenewalSettingsPaymentPlan.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudChannelV1RenewalSettingsPaymentPlan value: $value');
  }
}
