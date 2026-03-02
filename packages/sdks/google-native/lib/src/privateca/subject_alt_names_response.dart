// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_extension_response.dart';

/// SubjectAltNames corresponds to a more modern way of listing what the asserted identity is in a certificate (i.e., compared to the "common name" in the distinguished name).
class SubjectAltNamesResponse {
  /// Contains additional subject alternative name values. For each custom_san, the `value` field must contain an ASN.1 encoded UTF8String.
  final pulumi.Input<List<X509ExtensionResponse>> customSans;
  /// Contains only valid, fully-qualified host names.
  final pulumi.Input<List<String>> dnsNames;
  /// Contains only valid RFC 2822 E-mail addresses.
  final pulumi.Input<List<String>> emailAddresses;
  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final pulumi.Input<List<String>> ipAddresses;
  /// Contains only valid RFC 3986 URIs.
  final pulumi.Input<List<String>> uris;

  /// Creates a new [SubjectAltNamesResponse].
  /// [customSans] Contains additional subject alternative name values. For each custom_san, the `value` field must contain an ASN.1 encoded UTF8String.
  /// [dnsNames] Contains only valid, fully-qualified host names.
  /// [emailAddresses] Contains only valid RFC 2822 E-mail addresses.
  /// [ipAddresses] Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  /// [uris] Contains only valid RFC 3986 URIs.
  SubjectAltNamesResponse({
    required this.customSans,
    required this.dnsNames,
    required this.emailAddresses,
    required this.ipAddresses,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSans': pulumi.Input.mapInputValue<List<X509ExtensionResponse>, List<Map<String, dynamic>>>(customSans, (value) => pulumi.Input.encodeList<X509ExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsNames': dnsNames,
      'emailAddresses': emailAddresses,
      'ipAddresses': ipAddresses,
      'uris': uris,
    };
  }

  factory SubjectAltNamesResponse.fromMap(Map<String, dynamic> map) {
    return SubjectAltNamesResponse(
      customSans: (pulumi.Input.decodeList<X509ExtensionResponse>(map['customSans'], (value) => X509ExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsNames: ((map['dnsNames'] as List).cast<String>()).input(),
      emailAddresses: ((map['emailAddresses'] as List).cast<String>()).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
      uris: ((map['uris'] as List).cast<String>()).input(),
    );
  }
}

