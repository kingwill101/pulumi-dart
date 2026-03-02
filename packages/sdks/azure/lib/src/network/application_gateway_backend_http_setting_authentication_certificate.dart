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
  ApplicationGatewayBackendHttpSettingAuthenticationCertificate({
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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

