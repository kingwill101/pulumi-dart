/// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.
enum ShareAccessTier {
  valueTransactionOptimized("TransactionOptimized"),
  valueHot("Hot"),
  valueCool("Cool"),
  valuePremium("Premium");

  const ShareAccessTier(this.wireValue);
  final String wireValue;

  static ShareAccessTier fromValue(String value) {
    for (final item in ShareAccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareAccessTier value: $value');
  }
}
