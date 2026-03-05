/// The Payment channel for the SaasSubscription.
enum PaymentChannelType {
  valueSubscriptionDelegated("SubscriptionDelegated"),
  valueCustomerDelegated("CustomerDelegated");

  const PaymentChannelType(this.wireValue);
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

