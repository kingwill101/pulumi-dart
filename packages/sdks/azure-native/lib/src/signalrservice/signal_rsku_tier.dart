import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional tier of this particular SKU. 'Standard' or 'Free'.
///
/// `Basic` is deprecated, use `Standard` instead.
enum SignalRSkuTier implements pulumi.PulumiEnum<String> {
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const SignalRSkuTier(this.wireValue);
  @override
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
