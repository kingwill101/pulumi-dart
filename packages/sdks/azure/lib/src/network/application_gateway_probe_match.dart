// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayProbeMatch {
  /// A snippet from the Response Body which must be present in the Response.
  final pulumi.Input<String>? body;
  /// A list of allowed status codes for this Health Probe.
  final pulumi.Input<List<String>> statusCodes;

  /// Creates a new [ApplicationGatewayProbeMatch].
  /// [body] A snippet from the Response Body which must be present in the Response.
  /// [statusCodes] A list of allowed status codes for this Health Probe.
  const ApplicationGatewayProbeMatch({
    this.body,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'statusCodes': statusCodes,
    };
  }

  factory ApplicationGatewayProbeMatch.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbeMatch(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCodes: pulumi.Input.fromValue((map['statusCodes'] as List).cast<String>()),
    );
  }
}

