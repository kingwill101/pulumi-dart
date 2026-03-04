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
      certificateExpiry: pulumi.Input.fromValue(
        map['certificateExpiry'] as String,
      ),
      certificateThumbprint: pulumi.Input.fromValue(
        map['certificateThumbprint'] as String,
      ),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      externalAccessEnabled: pulumi.Input.fromValue(
        map['externalAccessEnabled'] as bool,
      ),
      publicCertificate: pulumi.Input.fromValue(
        map['publicCertificate'] as String,
      ),
    );
  }
}
