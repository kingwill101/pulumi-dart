// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertifiateCertificateAttribute {
  /// The create time of the Key Vault Certificate.
  final pulumi.Input<String>? created;
  /// whether the Key Vault Certificate is enabled.
  final pulumi.Input<bool>? enabled;
  /// The expires time of the Key Vault Certificate.
  final pulumi.Input<String>? expires;
  /// The not before valid time of the Key Vault Certificate.
  final pulumi.Input<String>? notBefore;
  /// The deletion recovery level of the Key Vault Certificate.
  final pulumi.Input<String>? recoveryLevel;
  /// The recent update time of the Key Vault Certificate.
  final pulumi.Input<String>? updated;

  /// Creates a new [CertifiateCertificateAttribute].
  /// [created] The create time of the Key Vault Certificate.
  /// [enabled] whether the Key Vault Certificate is enabled.
  /// [expires] The expires time of the Key Vault Certificate.
  /// [notBefore] The not before valid time of the Key Vault Certificate.
  /// [recoveryLevel] The deletion recovery level of the Key Vault Certificate.
  /// [updated] The recent update time of the Key Vault Certificate.
  CertifiateCertificateAttribute({
    this.created,
    this.enabled,
    this.expires,
    this.notBefore,
    this.recoveryLevel,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'enabled': ?enabled,
      'expires': ?expires,
      'notBefore': ?notBefore,
      'recoveryLevel': ?recoveryLevel,
      'updated': ?updated,
    };
  }

  factory CertifiateCertificateAttribute.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificateAttribute(
      created: map['created'] == null ? null : (map['created'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      expires: map['expires'] == null ? null : (map['expires'] as String).input(),
      notBefore: map['notBefore'] == null ? null : (map['notBefore'] as String).input(),
      recoveryLevel: map['recoveryLevel'] == null ? null : (map['recoveryLevel'] as String).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
    );
  }
}

