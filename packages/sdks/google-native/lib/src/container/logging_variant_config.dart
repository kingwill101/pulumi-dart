// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_variant_config_variant.dart';

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfig {
  /// Logging variant deployed on nodes.
  final pulumi.Input<LoggingVariantConfigVariant>? variant;

  /// Creates a new [LoggingVariantConfig].
  /// [variant] Logging variant deployed on nodes.
  const LoggingVariantConfig({
    this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variant': ?pulumi.Input.mapOptionalInputValue<LoggingVariantConfigVariant, String>(variant, (value) => value.wireValue),
    };
  }

  factory LoggingVariantConfig.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfig(
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingVariantConfigVariant.fromValue(guardedValue as String)); })(),
    );
  }
}
