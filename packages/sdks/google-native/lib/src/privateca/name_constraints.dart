// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the X.509 name constraints extension, per https://tools.ietf.org/html/rfc5280#section-4.2.1.10
class NameConstraints {
  /// Indicates whether or not the name constraints are marked critical.
  final pulumi.Input<bool>? critical;

  /// Contains excluded DNS names. Any DNS name that can be constructed by simply adding zero or more labels to the left-hand side of the name satisfies the name constraint. For example, `example.com`, `www.example.com`, `www.sub.example.com` would satisfy `example.com` while `example1.com` does not.
  final pulumi.Input<List<String>>? excludedDnsNames;

  /// Contains the excluded email addresses. The value can be a particular email address, a hostname to indicate all email addresses on that host or a domain with a leading period (e.g. `.example.com`) to indicate all email addresses in that domain.
  final pulumi.Input<List<String>>? excludedEmailAddresses;

  /// Contains the excluded IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges are expressed in similar encoding as IPv4 addresses.
  final pulumi.Input<List<String>>? excludedIpRanges;

  /// Contains the excluded URIs that apply to the host part of the name. The value can be a hostname or a domain with a leading period (like `.example.com`)
  final pulumi.Input<List<String>>? excludedUris;

  /// Contains permitted DNS names. Any DNS name that can be constructed by simply adding zero or more labels to the left-hand side of the name satisfies the name constraint. For example, `example.com`, `www.example.com`, `www.sub.example.com` would satisfy `example.com` while `example1.com` does not.
  final pulumi.Input<List<String>>? permittedDnsNames;

  /// Contains the permitted email addresses. The value can be a particular email address, a hostname to indicate all email addresses on that host or a domain with a leading period (e.g. `.example.com`) to indicate all email addresses in that domain.
  final pulumi.Input<List<String>>? permittedEmailAddresses;

  /// Contains the permitted IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges are expressed in similar encoding as IPv4 addresses.
  final pulumi.Input<List<String>>? permittedIpRanges;

  /// Contains the permitted URIs that apply to the host part of the name. The value can be a hostname or a domain with a leading period (like `.example.com`)
  final pulumi.Input<List<String>>? permittedUris;

  /// Creates a new [NameConstraints].
  /// [critical] Indicates whether or not the name constraints are marked critical.
  /// [excludedDnsNames] Contains excluded DNS names. Any DNS name that can be constructed by simply adding zero or more labels to the left-hand side of the name satisfies the name constraint. For example, `example.com`, `www.example.com`, `www.sub.example.com` would satisfy `example.com` while `example1.com` does not.
  /// [excludedEmailAddresses] Contains the excluded email addresses. The value can be a particular email address, a hostname to indicate all email addresses on that host or a domain with a leading period (e.g. `.example.com`) to indicate all email addresses in that domain.
  /// [excludedIpRanges] Contains the excluded IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges are expressed in similar encoding as IPv4 addresses.
  /// [excludedUris] Contains the excluded URIs that apply to the host part of the name. The value can be a hostname or a domain with a leading period (like `.example.com`)
  /// [permittedDnsNames] Contains permitted DNS names. Any DNS name that can be constructed by simply adding zero or more labels to the left-hand side of the name satisfies the name constraint. For example, `example.com`, `www.example.com`, `www.sub.example.com` would satisfy `example.com` while `example1.com` does not.
  /// [permittedEmailAddresses] Contains the permitted email addresses. The value can be a particular email address, a hostname to indicate all email addresses on that host or a domain with a leading period (e.g. `.example.com`) to indicate all email addresses in that domain.
  /// [permittedIpRanges] Contains the permitted IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges are expressed in similar encoding as IPv4 addresses.
  /// [permittedUris] Contains the permitted URIs that apply to the host part of the name. The value can be a hostname or a domain with a leading period (like `.example.com`)
  NameConstraints({
    this.critical,
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
      'critical': ?critical,
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

  factory NameConstraints.fromMap(Map<String, dynamic> map) {
    return NameConstraints(
      critical: (() {
        final guardedValue = map['critical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      excludedDnsNames: (() {
        final guardedValue = map['excludedDnsNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludedEmailAddresses: (() {
        final guardedValue = map['excludedEmailAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludedIpRanges: (() {
        final guardedValue = map['excludedIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludedUris: (() {
        final guardedValue = map['excludedUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      permittedDnsNames: (() {
        final guardedValue = map['permittedDnsNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      permittedEmailAddresses: (() {
        final guardedValue = map['permittedEmailAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      permittedIpRanges: (() {
        final guardedValue = map['permittedIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      permittedUris: (() {
        final guardedValue = map['permittedUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
