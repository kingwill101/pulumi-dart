// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayTrustedClientCertificate {
  /// The content of the Trusted Client Certificate in use.
  final pulumi.Input<String> data;

  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;

  /// The name of this Application Gateway.
  final pulumi.Input<String> name;

  /// Creates a new [GetApplicationGatewayTrustedClientCertificate].
  /// [data] The content of the Trusted Client Certificate in use.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayTrustedClientCertificate({
    required this.data,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'data': data, 'id': id, 'name': name};
  }

  factory GetApplicationGatewayTrustedClientCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationGatewayTrustedClientCertificate(
      data: pulumi.Input.fromValue(map['data'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
