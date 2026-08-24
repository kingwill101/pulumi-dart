// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersResultRuleFixedResponse {
  /// The http 'Content-Type' header to include in the response.
  final pulumi.Input<String> contentType;
  /// The http 'Location' header to include in the response.
  final pulumi.Input<String> location;
  /// Text to include as the http body.
  final pulumi.Input<String> messageBody;
  /// The http status code to respond with.
  final pulumi.Input<int> statusCode;

  /// Creates a new [GetLoadBalancersResultRuleFixedResponse].
  /// [contentType] The http 'Content-Type' header to include in the response.
  /// [location] The http 'Location' header to include in the response.
  /// [messageBody] Text to include as the http body.
  /// [statusCode] The http status code to respond with.
  const GetLoadBalancersResultRuleFixedResponse({
    required this.contentType,
    required this.location,
    required this.messageBody,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'location': location,
      'messageBody': messageBody,
      'statusCode': statusCode,
    };
  }

  factory GetLoadBalancersResultRuleFixedResponse.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResultRuleFixedResponse(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      messageBody: pulumi.Input.fromValue(map['messageBody'] as String),
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
    );
  }
}
