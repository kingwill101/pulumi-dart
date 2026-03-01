// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificateAttribute {
  /// The create time of the Key Vault Certificate.
  final String? created;
  /// whether the Key Vault Certificate is enabled.
  final bool? enabled;
  /// The expires time of the Key Vault Certificate.
  final String? expires;
  /// The not before valid time of the Key Vault Certificate.
  final String? notBefore;
  /// The deletion recovery level of the Key Vault Certificate.
  final String? recoveryLevel;
  /// The recent update time of the Key Vault Certificate.
  final String? updated;

  /// Creates a new [CertificateCertificateAttribute].
  /// [created] The create time of the Key Vault Certificate.
  /// [enabled] whether the Key Vault Certificate is enabled.
  /// [expires] The expires time of the Key Vault Certificate.
  /// [notBefore] The not before valid time of the Key Vault Certificate.
  /// [recoveryLevel] The deletion recovery level of the Key Vault Certificate.
  /// [updated] The recent update time of the Key Vault Certificate.
  CertificateCertificateAttribute({
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

  factory CertificateCertificateAttribute.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateAttribute(
      created: map['created'] == null ? null : map['created'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expires: map['expires'] == null ? null : map['expires'] as String,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as String,
      recoveryLevel: map['recoveryLevel'] == null ? null : map['recoveryLevel'] as String,
      updated: map['updated'] == null ? null : map['updated'] as String,
    );
  }
}

