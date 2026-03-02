// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecFunctionLogDestinationPapertrail {
  /// Papertrail syslog endpoint.
  final pulumi.Input<String> endpoint;

  /// Creates a new [AppSpecFunctionLogDestinationPapertrail].
  /// [endpoint] Papertrail syslog endpoint.
  AppSpecFunctionLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory AppSpecFunctionLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestinationPapertrail(
      endpoint: (map['endpoint'] as String).input(),
    );
  }
}

