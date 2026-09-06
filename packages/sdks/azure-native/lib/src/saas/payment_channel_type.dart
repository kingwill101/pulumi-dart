import 'package:pulumi/pulumi.dart' as pulumi;

/// The Payment channel for the SaasSubscription.
enum PaymentChannelType implements pulumi.PulumiEnum<String> {
  valueSubscriptionDelegated("SubscriptionDelegated"),
  valueCustomerDelegated("CustomerDelegated");

  const PaymentChannelType(this.wireValue);
  @override
  final String wireValue;

  static PaymentChannelType fromValue(String value) {
    for (final item in PaymentChannelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PaymentChannelType value: $value');
  }
}
