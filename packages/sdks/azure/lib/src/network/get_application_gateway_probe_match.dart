// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayProbeMatch {
  /// A snippet from the Response Body which must be present in the Response.
  final String body;
  /// Status code of the application gateway custom error.
  final List<String> statusCodes;

  /// Creates a new [GetApplicationGatewayProbeMatch].
  /// [body] A snippet from the Response Body which must be present in the Response.
  /// [statusCodes] Status code of the application gateway custom error.
  GetApplicationGatewayProbeMatch({
    required this.body,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'statusCodes': statusCodes,
    };
  }

  factory GetApplicationGatewayProbeMatch.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayProbeMatch(
      body: map['body'] as String,
      statusCodes: (map['statusCodes'] as List).cast<String>(),
    );
  }
}

