// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateConfigSubjectConfigSubjectAltName {
  /// Contains only valid, fully-qualified host names.
  final pulumi.Input<List<String>>? dnsNames;
  /// Contains only valid RFC 2822 E-mail addresses.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// Contains only valid RFC 3986 URIs.
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [CertificateConfigSubjectConfigSubjectAltName].
  /// [dnsNames] Contains only valid, fully-qualified host names.
  /// [emailAddresses] Contains only valid RFC 2822 E-mail addresses.
  /// [ipAddresses] Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  /// [uris] Contains only valid RFC 3986 URIs.
  CertificateConfigSubjectConfigSubjectAltName({
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': ?dnsNames,
      'emailAddresses': ?emailAddresses,
      'ipAddresses': ?ipAddresses,
      'uris': ?uris,
    };
  }

  factory CertificateConfigSubjectConfigSubjectAltName.fromMap(Map<String, dynamic> map) {
    return CertificateConfigSubjectConfigSubjectAltName(
      dnsNames: map['dnsNames'] == null ? null : ((map['dnsNames']! as List).cast<String>()).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses']! as List).cast<String>()).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      uris: map['uris'] == null ? null : ((map['uris']! as List).cast<String>()).input(),
    );
  }
}

