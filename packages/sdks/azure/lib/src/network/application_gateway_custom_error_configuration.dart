// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayCustomErrorConfiguration {
  /// Error page URL of the application gateway customer error.
  final pulumi.Input<String> customErrorPageUrl;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// Status code of the application gateway customer error. Possible values are `HttpStatus400`, `HttpStatus403`, `HttpStatus404`, `HttpStatus405`, `HttpStatus408`, `HttpStatus500`, `HttpStatus502`, `HttpStatus503` and `HttpStatus504`
  final pulumi.Input<String> statusCode;

  /// Creates a new [ApplicationGatewayCustomErrorConfiguration].
  /// [customErrorPageUrl] Error page URL of the application gateway customer error.
  /// [id] The ID of the Rewrite Rule Set
  /// [statusCode] Status code of the application gateway customer error. Possible values are `HttpStatus400`, `HttpStatus403`, `HttpStatus404`, `HttpStatus405`, `HttpStatus408`, `HttpStatus500`, `HttpStatus502`, `HttpStatus503` and `HttpStatus504`
  ApplicationGatewayCustomErrorConfiguration({
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

  factory ApplicationGatewayCustomErrorConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayCustomErrorConfiguration(
      customErrorPageUrl: (map['customErrorPageUrl'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      statusCode: (map['statusCode'] as String).input(),
    );
  }
}

