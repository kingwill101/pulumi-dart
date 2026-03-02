// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecWorkerLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final pulumi.Input<String> endpoint;

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
      endpoint: (map['endpoint'] as String).input(),
    );
  }
}

