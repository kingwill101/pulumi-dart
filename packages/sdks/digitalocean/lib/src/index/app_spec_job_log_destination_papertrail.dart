// ignore_for_file: unused_element, unnecessary_cast


class AppSpecJobLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final String endpoint;

  /// Creates a new [AppSpecJobLogDestinationPapertrail].
  /// [endpoint] Papertrail syslog endpoint.
  AppSpecJobLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory AppSpecJobLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return AppSpecJobLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

