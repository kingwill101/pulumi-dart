// ignore_for_file: unused_element, unnecessary_cast


/// LoggingVariantConfig specifies the behaviour of the logging component.
class LoggingVariantConfigResponse {
  /// Logging variant deployed on nodes.
  final String variant;

  /// Creates a new [LoggingVariantConfigResponse].
  /// [variant] Logging variant deployed on nodes.
  LoggingVariantConfigResponse({
    required this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variant': variant,
    };
  }

  factory LoggingVariantConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingVariantConfigResponse(
      variant: map['variant'] as String,
    );
  }
}

