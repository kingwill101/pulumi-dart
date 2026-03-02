// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorityConfigX509ConfigNameConstraints {
  /// Indicates whether or not the name constraints are marked critical.
  final pulumi.Input<bool> critical;
  /// Contains excluded DNS names. Any DNS name that can be
  /// constructed by simply adding zero or more labels to
  /// the left-hand side of the name satisfies the name constraint.
  /// For example, `example.com`, `www.example.com`, `www.sub.example.com`
  /// would satisfy `example.com` while `example1.com` does not.
  final pulumi.Input<List<String>>? excludedDnsNames;
  /// Contains the excluded email addresses. The value can be a particular
  /// email address, a hostname to indicate all email addresses on that host or
  /// a domain with a leading period (e.g. `.example.com`) to indicate
  /// all email addresses in that domain.
  final pulumi.Input<List<String>>? excludedEmailAddresses;
  /// Contains the excluded IP ranges. For IPv4 addresses, the ranges
  /// are expressed using CIDR notation as specified in RFC 4632.
  /// For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
  /// addresses.
  final pulumi.Input<List<String>>? excludedIpRanges;
  /// Contains the excluded URIs that apply to the host part of the name.
  /// The value can be a hostname or a domain with a
  /// leading period (like `.example.com`)
  final pulumi.Input<List<String>>? excludedUris;
  /// Contains permitted DNS names. Any DNS name that can be
  /// constructed by simply adding zero or more labels to
  /// the left-hand side of the name satisfies the name constraint.
  /// For example, `example.com`, `www.example.com`, `www.sub.example.com`
  /// would satisfy `example.com` while `example1.com` does not.
  final pulumi.Input<List<String>>? permittedDnsNames;
  /// Contains the permitted email addresses. The value can be a particular
  /// email address, a hostname to indicate all email addresses on that host or
  /// a domain with a leading period (e.g. `.example.com`) to indicate
  /// all email addresses in that domain.
  final pulumi.Input<List<String>>? permittedEmailAddresses;
  /// Contains the permitted IP ranges. For IPv4 addresses, the ranges
  /// are expressed using CIDR notation as specified in RFC 4632.
  /// For IPv6 addresses, the ranges are expressed in similar encoding as IPv4
  /// addresses.
  final pulumi.Input<List<String>>? permittedIpRanges;
  /// Contains the permitted URIs that apply to the host part of the name.
  /// The value can be a hostname or a domain with a
  /// leading period (like `.example.com`)
  final pulumi.Input<List<String>>? permittedUris;

  /// Creates a new [AuthorityConfigX509ConfigNameConstraints].
  /// [critical] Indicates whether or not the name constraints are marked critical.
  /// [excludedDnsNames] Contains excluded DNS names. Any DNS name that can be
  /// [excludedEmailAddresses] Contains the excluded email addresses. The value can be a particular
  /// [excludedIpRanges] Contains the excluded IP ranges. For IPv4 addresses, the ranges
  /// [excludedUris] Contains the excluded URIs that apply to the host part of the name.
  /// [permittedDnsNames] Contains permitted DNS names. Any DNS name that can be
  /// [permittedEmailAddresses] Contains the permitted email addresses. The value can be a particular
  /// [permittedIpRanges] Contains the permitted IP ranges. For IPv4 addresses, the ranges
  /// [permittedUris] Contains the permitted URIs that apply to the host part of the name.
  AuthorityConfigX509ConfigNameConstraints({
    required this.critical,
    this.excludedDnsNames,
    this.excludedEmailAddresses,
    this.excludedIpRanges,
    this.excludedUris,
    this.permittedDnsNames,
    this.permittedEmailAddresses,
    this.permittedIpRanges,
    this.permittedUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': critical,
      'excludedDnsNames': ?excludedDnsNames,
      'excludedEmailAddresses': ?excludedEmailAddresses,
      'excludedIpRanges': ?excludedIpRanges,
      'excludedUris': ?excludedUris,
      'permittedDnsNames': ?permittedDnsNames,
      'permittedEmailAddresses': ?permittedEmailAddresses,
      'permittedIpRanges': ?permittedIpRanges,
      'permittedUris': ?permittedUris,
    };
  }

  factory AuthorityConfigX509ConfigNameConstraints.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509ConfigNameConstraints(
      critical: (map['critical'] as bool).input(),
      excludedDnsNames: map['excludedDnsNames'] == null ? null : ((map['excludedDnsNames'] as List).cast<String>()).input(),
      excludedEmailAddresses: map['excludedEmailAddresses'] == null ? null : ((map['excludedEmailAddresses'] as List).cast<String>()).input(),
      excludedIpRanges: map['excludedIpRanges'] == null ? null : ((map['excludedIpRanges'] as List).cast<String>()).input(),
      excludedUris: map['excludedUris'] == null ? null : ((map['excludedUris'] as List).cast<String>()).input(),
      permittedDnsNames: map['permittedDnsNames'] == null ? null : ((map['permittedDnsNames'] as List).cast<String>()).input(),
      permittedEmailAddresses: map['permittedEmailAddresses'] == null ? null : ((map['permittedEmailAddresses'] as List).cast<String>()).input(),
      permittedIpRanges: map['permittedIpRanges'] == null ? null : ((map['permittedIpRanges'] as List).cast<String>()).input(),
      permittedUris: map['permittedUris'] == null ? null : ((map['permittedUris'] as List).cast<String>()).input(),
    );
  }
}

