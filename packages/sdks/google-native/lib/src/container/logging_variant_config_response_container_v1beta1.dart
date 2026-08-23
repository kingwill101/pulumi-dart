// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfigResponseContainerV1beta1 {
  /// Logging variant deployed on nodes.
  final pulumi.Input<String> variant;

  /// Creates a new [LoggingVariantConfigResponseContainerV1beta1].
  /// [variant] Logging variant deployed on nodes.
  const LoggingVariantConfigResponseContainerV1beta1({
    required this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variant': variant,
    };
  }

  factory LoggingVariantConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfigResponseContainerV1beta1(
      variant: pulumi.Input.fromValue(map['variant'] as String),
    );
  }
}
