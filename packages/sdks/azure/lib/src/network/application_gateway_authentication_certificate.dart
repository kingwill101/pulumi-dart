// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayAuthenticationCertificate {
  /// The contents of the Authentication Certificate which should be used.
  final pulumi.Input<String> data;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Name of the Authentication Certificate to use.
  final pulumi.Input<String> name;

  /// Creates a new [ApplicationGatewayAuthenticationCertificate].
  /// [data] The contents of the Authentication Certificate which should be used.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the Authentication Certificate to use.
  ApplicationGatewayAuthenticationCertificate({
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

  factory ApplicationGatewayAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAuthenticationCertificate(
      data: pulumi.Input.fromValue(map['data'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

