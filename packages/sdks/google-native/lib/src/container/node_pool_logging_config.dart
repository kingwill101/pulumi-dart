// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_variant_config.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfig {
  /// Logging variant configuration.
  final pulumi.Input<LoggingVariantConfig>? variantConfig;

  /// Creates a new [NodePoolLoggingConfig].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfig({
    this.variantConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantConfig': ?pulumi.Input.mapOptionalInputValue<LoggingVariantConfig, Map<String, dynamic>>(variantConfig, (value) => value.toMap()),
    };
  }

  factory NodePoolLoggingConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfig(
      variantConfig: (() { final guardedValue = map['variantConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingVariantConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

