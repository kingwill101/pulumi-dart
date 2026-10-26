import 'package:pulumi/pulumi.dart' as pulumi;

/// Logging variant deployed on nodes.
enum LoggingVariantConfigVariantContainerV1beta1 implements pulumi.PulumiEnum<String> {
  variantUnspecified("VARIANT_UNSPECIFIED"),
  default_("DEFAULT"),
  maxThroughput("MAX_THROUGHPUT");

  const LoggingVariantConfigVariantContainerV1beta1(this.wireValue);
  @override
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
