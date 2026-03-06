// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayHttpListenerCustomErrorConfiguration {
  /// Error page URL of the application gateway customer error.
  final pulumi.Input<String> customErrorPageUrl;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// Status code of the application gateway customer error. Possible values are `HttpStatus400`, `HttpStatus403`, `HttpStatus404`, `HttpStatus405`, `HttpStatus408`, `HttpStatus500`, `HttpStatus502`, `HttpStatus503` and `HttpStatus504`
  final pulumi.Input<String> statusCode;

  /// Creates a new [ApplicationGatewayHttpListenerCustomErrorConfiguration].
  /// [customErrorPageUrl] Error page URL of the application gateway customer error.
  /// [id] The ID of the Rewrite Rule Set
  /// [statusCode] Status code of the application gateway customer error. Possible values are `HttpStatus400`, `HttpStatus403`, `HttpStatus404`, `HttpStatus405`, `HttpStatus408`, `HttpStatus500`, `HttpStatus502`, `HttpStatus503` and `HttpStatus504`
  const ApplicationGatewayHttpListenerCustomErrorConfiguration({
    required this.customErrorPageUrl,
    this.id,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorPageUrl': customErrorPageUrl,
      'id': ?id,
      'statusCode': statusCode,
    };
  }

  factory ApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHttpListenerCustomErrorConfiguration(
      customErrorPageUrl: pulumi.Input.fromValue(map['customErrorPageUrl'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}

