// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayTrustedClientCertificate {
  /// The base-64 encoded certificate.
  final pulumi.Input<String> data;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String?>? id;
  /// The name of the Trusted Client Certificate that is unique within this Application Gateway.
  final pulumi.Input<String> name;

  /// Creates a new [ApplicationGatewayTrustedClientCertificate].
  /// [data] The base-64 encoded certificate.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Trusted Client Certificate that is unique within this Application Gateway.
  const ApplicationGatewayTrustedClientCertificate({
    required this.data,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'id': ?id,
      'name': name,
    };
  }

  factory ApplicationGatewayTrustedClientCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedClientCertificate(
      data: pulumi.Input.fromValue(map['data'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
