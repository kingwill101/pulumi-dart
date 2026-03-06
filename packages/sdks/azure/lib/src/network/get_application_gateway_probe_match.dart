// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayProbeMatch {
  /// A snippet from the Response Body which must be present in the Response.
  final pulumi.Input<String> body;
  /// Status code of the application gateway custom error.
  final pulumi.Input<List<String>> statusCodes;

  /// Creates a new [GetApplicationGatewayProbeMatch].
  /// [body] A snippet from the Response Body which must be present in the Response.
  /// [statusCodes] Status code of the application gateway custom error.
  const GetApplicationGatewayProbeMatch({
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
      body: pulumi.Input.fromValue(map['body'] as String),
      statusCodes: pulumi.Input.fromValue((map['statusCodes'] as List).cast<String>()),
    );
  }
}

