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
      body: (map['body'] as String).input(),
      statusCodes: ((map['statusCodes'] as List).cast<String>()).input(),
    );
  }
}

