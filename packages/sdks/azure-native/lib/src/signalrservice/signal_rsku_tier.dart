/// Optional tier of this particular SKU. 'Standard' or 'Free'.
///
/// `Basic` is deprecated, use `Standard` instead.
enum SignalRSkuTier {
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const SignalRSkuTier(this.wireValue);
  final String wireValue;

  static SignalRSkuTier fromValue(String value) {
    for (final item in SignalRSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignalRSkuTier value: $value');
  }
}
