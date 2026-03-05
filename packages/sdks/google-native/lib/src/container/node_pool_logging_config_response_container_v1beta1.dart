// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_variant_config_response_container_v1beta1.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfigResponseContainerV1beta1 {
  /// Logging variant configuration.
  final pulumi.Input<LoggingVariantConfigResponseContainerV1beta1> variantConfig;

  /// Creates a new [NodePoolLoggingConfigResponseContainerV1beta1].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfigResponseContainerV1beta1({
    required this.variantConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantConfig': pulumi.Input.mapInputValue<LoggingVariantConfigResponseContainerV1beta1, Map<String, dynamic>>(variantConfig, (value) => value.toMap()),
    };
  }

  factory NodePoolLoggingConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfigResponseContainerV1beta1(
      variantConfig: pulumi.Input.fromValue(LoggingVariantConfigResponseContainerV1beta1.fromMap((map['variantConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

