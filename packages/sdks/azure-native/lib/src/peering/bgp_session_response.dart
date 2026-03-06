// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that define a BGP session.
class BgpSessionResponse {
  /// The maximum number of prefixes advertised over the IPv4 session.
  final pulumi.Input<int>? maxPrefixesAdvertisedV4;
  /// The maximum number of prefixes advertised over the IPv6 session.
  final pulumi.Input<int>? maxPrefixesAdvertisedV6;
  /// The MD5 authentication key of the session.
  final pulumi.Input<String>? md5AuthenticationKey;
  /// The IPv4 session address on Microsoft's end.
  final pulumi.Input<String>? microsoftSessionIPv4Address;
  /// The IPv6 session address on Microsoft's end.
  final pulumi.Input<String>? microsoftSessionIPv6Address;
  /// The IPv4 session address on peer's end.
  final pulumi.Input<String>? peerSessionIPv4Address;
  /// The IPv6 session address on peer's end.
  final pulumi.Input<String>? peerSessionIPv6Address;
  /// The IPv4 prefix that contains both ends' IPv4 addresses.
  final pulumi.Input<String>? sessionPrefixV4;
  /// The IPv6 prefix that contains both ends' IPv6 addresses.
  final pulumi.Input<String>? sessionPrefixV6;
  /// The state of the IPv4 session.
  final pulumi.Input<String> sessionStateV4;
  /// The state of the IPv6 session.
  final pulumi.Input<String> sessionStateV6;

  /// Creates a new [BgpSessionResponse].
  /// [maxPrefixesAdvertisedV4] The maximum number of prefixes advertised over the IPv4 session.
  /// [maxPrefixesAdvertisedV6] The maximum number of prefixes advertised over the IPv6 session.
  /// [md5AuthenticationKey] The MD5 authentication key of the session.
  /// [microsoftSessionIPv4Address] The IPv4 session address on Microsoft's end.
  /// [microsoftSessionIPv6Address] The IPv6 session address on Microsoft's end.
  /// [peerSessionIPv4Address] The IPv4 session address on peer's end.
  /// [peerSessionIPv6Address] The IPv6 session address on peer's end.
  /// [sessionPrefixV4] The IPv4 prefix that contains both ends' IPv4 addresses.
  /// [sessionPrefixV6] The IPv6 prefix that contains both ends' IPv6 addresses.
  /// [sessionStateV4] The state of the IPv4 session.
  /// [sessionStateV6] The state of the IPv6 session.
  const BgpSessionResponse({
    this.maxPrefixesAdvertisedV4,
    this.maxPrefixesAdvertisedV6,
    this.md5AuthenticationKey,
    this.microsoftSessionIPv4Address,
    this.microsoftSessionIPv6Address,
    this.peerSessionIPv4Address,
    this.peerSessionIPv6Address,
    this.sessionPrefixV4,
    this.sessionPrefixV6,
    required this.sessionStateV4,
    required this.sessionStateV6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPrefixesAdvertisedV4': ?maxPrefixesAdvertisedV4,
      'maxPrefixesAdvertisedV6': ?maxPrefixesAdvertisedV6,
      'md5AuthenticationKey': ?md5AuthenticationKey,
      'microsoftSessionIPv4Address': ?microsoftSessionIPv4Address,
      'microsoftSessionIPv6Address': ?microsoftSessionIPv6Address,
      'peerSessionIPv4Address': ?peerSessionIPv4Address,
      'peerSessionIPv6Address': ?peerSessionIPv6Address,
      'sessionPrefixV4': ?sessionPrefixV4,
      'sessionPrefixV6': ?sessionPrefixV6,
      'sessionStateV4': sessionStateV4,
      'sessionStateV6': sessionStateV6,
    };
  }

  factory BgpSessionResponse.fromMap(Map<String, dynamic> map) {
    return BgpSessionResponse(
      maxPrefixesAdvertisedV4: (() { final guardedValue = map['maxPrefixesAdvertisedV4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPrefixesAdvertisedV6: (() { final guardedValue = map['maxPrefixesAdvertisedV6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      md5AuthenticationKey: (() { final guardedValue = map['md5AuthenticationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftSessionIPv4Address: (() { final guardedValue = map['microsoftSessionIPv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoftSessionIPv6Address: (() { final guardedValue = map['microsoftSessionIPv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerSessionIPv4Address: (() { final guardedValue = map['peerSessionIPv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerSessionIPv6Address: (() { final guardedValue = map['peerSessionIPv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionPrefixV4: (() { final guardedValue = map['sessionPrefixV4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionPrefixV6: (() { final guardedValue = map['sessionPrefixV6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionStateV4: pulumi.Input.fromValue(map['sessionStateV4'] as String),
      sessionStateV6: pulumi.Input.fromValue(map['sessionStateV6'] as String),
    );
  }
}

