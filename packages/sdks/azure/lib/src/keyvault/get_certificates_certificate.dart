// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatesCertificate {
  /// Whether this certificate is enabled.
  final pulumi.Input<bool> enabled;
  /// The ID of this certificate.
  final pulumi.Input<String> id;
  /// The name of certificate.
  final pulumi.Input<String> name;
  /// The tags of this certificate.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetCertificatesCertificate].
  /// [enabled] Whether this certificate is enabled.
  /// [id] The ID of this certificate.
  /// [name] The name of certificate.
  /// [tags] The tags of this certificate.
  const GetCertificatesCertificate({
    required this.enabled,
    required this.id,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'name': name,
      'tags': tags,
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}

