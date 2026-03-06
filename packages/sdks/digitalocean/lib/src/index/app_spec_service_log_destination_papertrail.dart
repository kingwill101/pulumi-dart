// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecServiceLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final pulumi.Input<String> endpoint;

  /// Creates a new [AppSpecServiceLogDestinationPapertrail].
  /// [endpoint] Papertrail syslog endpoint.
  const AppSpecServiceLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory AppSpecServiceLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestinationPapertrail(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

