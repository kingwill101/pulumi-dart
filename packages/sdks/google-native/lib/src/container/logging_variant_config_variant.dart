/// Logging variant deployed on nodes.
enum LoggingVariantConfigVariant {
  variantUnspecified("VARIANT_UNSPECIFIED"),
  default_("DEFAULT"),
  maxThroughput("MAX_THROUGHPUT");

  const LoggingVariantConfigVariant(this.wireValue);
  final String wireValue;

  static LoggingVariantConfigVariant fromValue(String value) {
    for (final item in LoggingVariantConfigVariant.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingVariantConfigVariant value: $value');
  }
}

