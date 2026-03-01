// ignore_for_file: unused_element, unnecessary_cast


class AppSpecWorkerLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final String endpoint;

  /// Creates a new [AppSpecWorkerLogDestinationPapertrail].
  /// [endpoint] Papertrail syslog endpoint.
  AppSpecWorkerLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory AppSpecWorkerLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

