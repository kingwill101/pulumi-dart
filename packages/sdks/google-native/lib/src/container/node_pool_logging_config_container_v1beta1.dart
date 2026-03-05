// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_variant_config_container_v1beta1.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfigContainerV1beta1 {
  /// Logging variant configuration.
  final pulumi.Input<LoggingVariantConfigContainerV1beta1>? variantConfig;

  /// Creates a new [NodePoolLoggingConfigContainerV1beta1].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfigContainerV1beta1({
    this.variantConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantConfig': ?pulumi.Input.mapOptionalInputValue<LoggingVariantConfigContainerV1beta1, Map<String, dynamic>>(variantConfig, (value) => value.toMap()),
    };
  }

  factory NodePoolLoggingConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfigContainerV1beta1(
      variantConfig: (() { final guardedValue = map['variantConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingVariantConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

