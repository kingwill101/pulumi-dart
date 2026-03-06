// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayCustomErrorConfiguration {
  /// Error page URL of the application gateway custom error.
  final pulumi.Input<String> customErrorPageUrl;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// Status code of the application gateway custom error.
  final pulumi.Input<String> statusCode;

  /// Creates a new [GetApplicationGatewayCustomErrorConfiguration].
  /// [customErrorPageUrl] Error page URL of the application gateway custom error.
  /// [id] The ID of the Rewrite Rule Set
  /// [statusCode] Status code of the application gateway custom error.
  const GetApplicationGatewayCustomErrorConfiguration({
    required this.customErrorPageUrl,
    required this.id,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorPageUrl': customErrorPageUrl,
      'id': id,
      'statusCode': statusCode,
    };
  }

  factory GetApplicationGatewayCustomErrorConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayCustomErrorConfiguration(
      customErrorPageUrl: pulumi.Input.fromValue(map['customErrorPageUrl'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}

