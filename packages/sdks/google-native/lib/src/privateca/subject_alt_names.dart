// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_extension.dart';

/// SubjectAltNames corresponds to a more modern way of listing what the asserted identity is in a certificate (i.e., compared to the "common name" in the distinguished name).
class SubjectAltNames {
  /// Contains additional subject alternative name values. For each custom_san, the `value` field must contain an ASN.1 encoded UTF8String.
  final pulumi.Input<List<X509Extension>>? customSans;
  /// Contains only valid, fully-qualified host names.
  final pulumi.Input<List<String>>? dnsNames;
  /// Contains only valid RFC 2822 E-mail addresses.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// Contains only valid RFC 3986 URIs.
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [SubjectAltNames].
  /// [customSans] Contains additional subject alternative name values. For each custom_san, the `value` field must contain an ASN.1 encoded UTF8String.
  /// [dnsNames] Contains only valid, fully-qualified host names.
  /// [emailAddresses] Contains only valid RFC 2822 E-mail addresses.
  /// [ipAddresses] Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  /// [uris] Contains only valid RFC 3986 URIs.
  SubjectAltNames({
    this.customSans,
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSans': ?pulumi.Input.mapOptionalInputValue<List<X509Extension>, List<Map<String, dynamic>>>(customSans, (value) => pulumi.Input.encodeList<X509Extension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsNames': ?dnsNames,
      'emailAddresses': ?emailAddresses,
      'ipAddresses': ?ipAddresses,
      'uris': ?uris,
    };
  }

  factory SubjectAltNames.fromMap(Map<String, dynamic> map) {
    return SubjectAltNames(
      customSans: map['customSans'] == null ? null : (pulumi.Input.decodeList<X509Extension>(map['customSans']!, (value) => X509Extension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsNames: map['dnsNames'] == null ? null : ((map['dnsNames']! as List).cast<String>()).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses']! as List).cast<String>()).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      uris: map['uris'] == null ? null : ((map['uris']! as List).cast<String>()).input(),
    );
  }
}

