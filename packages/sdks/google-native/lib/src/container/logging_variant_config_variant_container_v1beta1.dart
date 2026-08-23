/// Logging variant deployed on nodes.
enum LoggingVariantConfigVariantContainerV1beta1 {
  variantUnspecified("VARIANT_UNSPECIFIED"),
  default_("DEFAULT"),
  maxThroughput("MAX_THROUGHPUT");

  const LoggingVariantConfigVariantContainerV1beta1(this.wireValue);
  final String wireValue;

  static LoggingVariantConfigVariantContainerV1beta1 fromValue(String value) {
    for (final item in LoggingVariantConfigVariantContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingVariantConfigVariantContainerV1beta1 value: $value');
  }
}
