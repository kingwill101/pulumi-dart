// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayBackendHttpSettingAuthenticationCertificate {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Name of the Authentication Certificate to use.
  final pulumi.Input<String> name;

  /// Creates a new [ApplicationGatewayBackendHttpSettingAuthenticationCertificate].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the Authentication Certificate to use.
  const ApplicationGatewayBackendHttpSettingAuthenticationCertificate({
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
    };
  }

  factory ApplicationGatewayBackendHttpSettingAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendHttpSettingAuthenticationCertificate(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

