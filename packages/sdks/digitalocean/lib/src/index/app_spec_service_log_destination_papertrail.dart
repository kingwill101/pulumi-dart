// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final String endpoint;

  /// Creates a new [AppSpecServiceLogDestinationPapertrail].
  /// [endpoint] Papertrail syslog endpoint.
  AppSpecServiceLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory AppSpecServiceLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

