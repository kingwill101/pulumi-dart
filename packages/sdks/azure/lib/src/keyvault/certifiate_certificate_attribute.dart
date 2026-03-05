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
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryLevel: (() { final guardedValue = map['recoveryLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

