// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessMutualTlsCertificate resources.
class AccessMutualTlsCertificateState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The hostnames of the applications that will use this certificate.
  final pulumi.Input<List<String>?>? associatedHostnames;
  /// The certificate content.
  final pulumi.Input<String?>? certificate;
  final pulumi.Input<String?>? expiresOn;
  /// The MD5 fingerprint of the certificate.
  final pulumi.Input<String?>? fingerprint;
  /// The name of the certificate.
  final pulumi.Input<String?>? name;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessMutualTlsCertificateState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [associatedHostnames] The hostnames of the applications that will use this certificate.
  /// [certificate] The certificate content.
  /// [expiresOn] Optional.
  /// [fingerprint] The MD5 fingerprint of the certificate.
  /// [name] The name of the certificate.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessMutualTlsCertificateState({
    this.accountId,
    this.associatedHostnames,
    this.certificate,
    this.expiresOn,
    this.fingerprint,
    this.name,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'associatedHostnames': ?associatedHostnames,
      'certificate': ?certificate,
      'expiresOn': ?expiresOn,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'zoneId': ?zoneId,
    };
  }

  factory AccessMutualTlsCertificateState.fromMap(Map<String, dynamic> map) {
    return AccessMutualTlsCertificateState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedHostnames: (() { final guardedValue = map['associatedHostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
