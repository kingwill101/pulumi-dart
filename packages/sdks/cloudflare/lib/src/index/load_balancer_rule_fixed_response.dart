// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerRuleFixedResponse {
  /// The http 'Content-Type' header to include in the response.
  final pulumi.Input<String?>? contentType;
  /// The http 'Location' header to include in the response.
  final pulumi.Input<String?>? location;
  /// Text to include as the http body.
  final pulumi.Input<String?>? messageBody;
  /// The http status code to respond with.
  final pulumi.Input<int?>? statusCode;

  /// Creates a new [LoadBalancerRuleFixedResponse].
  /// [contentType] The http 'Content-Type' header to include in the response.
  /// [location] The http 'Location' header to include in the response.
  /// [messageBody] Text to include as the http body.
  /// [statusCode] The http status code to respond with.
  const LoadBalancerRuleFixedResponse({
    this.contentType,
    this.location,
    this.messageBody,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'location': ?location,
      'messageBody': ?messageBody,
      'statusCode': ?statusCode,
    };
  }

  factory LoadBalancerRuleFixedResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleFixedResponse(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageBody: (() { final guardedValue = map['messageBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
