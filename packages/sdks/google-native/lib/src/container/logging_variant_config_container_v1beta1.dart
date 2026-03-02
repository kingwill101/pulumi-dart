// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_variant_config_variant_container_v1beta1.dart';

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfigContainerV1beta1 {
  /// Logging variant deployed on nodes.
  final pulumi.Input<LoggingVariantConfigVariantContainerV1beta1>? variant;

  /// Creates a new [LoggingVariantConfigContainerV1beta1].
  /// [variant] Logging variant deployed on nodes.
  LoggingVariantConfigContainerV1beta1({
    this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variant': ?pulumi.Input.mapOptionalInputValue<LoggingVariantConfigVariantContainerV1beta1, String>(variant, (value) => value.value),
    };
  }

  factory LoggingVariantConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfigContainerV1beta1(
      variant: map['variant'] == null ? null : (LoggingVariantConfigVariantContainerV1beta1.fromValue(map['variant']! as String)).input(),
    );
  }
}

