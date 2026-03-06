// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfigResponse {
  /// Logging variant deployed on nodes.
  final pulumi.Input<String> variant;

  /// Creates a new [LoggingVariantConfigResponse].
  /// [variant] Logging variant deployed on nodes.
  const LoggingVariantConfigResponse({
    required this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variant': variant,
    };
  }

  factory LoggingVariantConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfigResponse(
      variant: pulumi.Input.fromValue(map['variant'] as String),
    );
  }
}

