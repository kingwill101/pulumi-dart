// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceSecureLdap {
  final pulumi.Input<String> certificateExpiry;
  final pulumi.Input<String> certificateThumbprint;
  /// Whether secure LDAP is enabled for the managed domain.
  final pulumi.Input<bool> enabled;
  /// Whether external access to LDAPS over the Internet, is enabled.
  final pulumi.Input<bool> externalAccessEnabled;
  final pulumi.Input<String> publicCertificate;

  /// Creates a new [GetServiceSecureLdap].
  /// [certificateExpiry] Required.
  /// [certificateThumbprint] Required.
  /// [enabled] Whether secure LDAP is enabled for the managed domain.
  /// [externalAccessEnabled] Whether external access to LDAPS over the Internet, is enabled.
  /// [publicCertificate] Required.
  GetServiceSecureLdap({
    required this.certificateExpiry,
    required this.certificateThumbprint,
    required this.enabled,
    required this.externalAccessEnabled,
    required this.publicCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateExpiry': certificateExpiry,
      'certificateThumbprint': certificateThumbprint,
      'enabled': enabled,
      'externalAccessEnabled': externalAccessEnabled,
      'publicCertificate': publicCertificate,
    };
  }

  factory GetServiceSecureLdap.fromMap(Map<String, dynamic> map) {
    return GetServiceSecureLdap(
      certificateExpiry: (map['certificateExpiry'] as String).input(),
      certificateThumbprint: (map['certificateThumbprint'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      externalAccessEnabled: (map['externalAccessEnabled'] as bool).input(),
      publicCertificate: (map['publicCertificate'] as String).input(),
    );
  }
}

