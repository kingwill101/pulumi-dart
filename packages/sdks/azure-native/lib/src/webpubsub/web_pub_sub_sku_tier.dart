import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional tier of this particular SKU. 'Standard' or 'Free'.
///
/// `Basic` is deprecated, use `Standard` instead.
enum WebPubSubSkuTier implements pulumi.PulumiEnum<String> {
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const WebPubSubSkuTier(this.wireValue);
  @override
  final String wireValue;

  static WebPubSubSkuTier fromValue(String value) {
    for (final item in WebPubSubSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebPubSubSkuTier value: $value');
  }
}
