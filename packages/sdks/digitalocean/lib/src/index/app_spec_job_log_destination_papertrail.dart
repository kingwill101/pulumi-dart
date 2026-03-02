// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecJobLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final pulumi.Input<String> endpoint;

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
      endpoint: (map['endpoint'] as String).input(),
    );
  }
}

