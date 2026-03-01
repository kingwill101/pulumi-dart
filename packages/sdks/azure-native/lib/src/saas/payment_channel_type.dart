/// The Payment channel for the SaasSubscription.
enum PaymentChannelType {
  valueSubscriptionDelegated("SubscriptionDelegated"),
  valueCustomerDelegated("CustomerDelegated");

  const PaymentChannelType(this.value);
  final String value;

  static PaymentChannelType fromValue(String value) {
    for (final item in PaymentChannelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PaymentChannelType value: $value');
  }
}

