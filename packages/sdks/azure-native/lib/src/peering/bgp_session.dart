// ignore_for_file: unused_element, unnecessary_cast


/// The properties that define a BGP session.
class BgpSession {
  /// The maximum number of prefixes advertised over the IPv4 session.
  final int? maxPrefixesAdvertisedV4;
  /// The maximum number of prefixes advertised over the IPv6 session.
  final int? maxPrefixesAdvertisedV6;
  /// The MD5 authentication key of the session.
  final String? md5AuthenticationKey;
  /// The IPv4 session address on Microsoft's end.
  final String? microsoftSessionIPv4Address;
  /// The IPv6 session address on Microsoft's end.
  final String? microsoftSessionIPv6Address;
  /// The IPv4 session address on peer's end.
  final String? peerSessionIPv4Address;
  /// The IPv6 session address on peer's end.
  final String? peerSessionIPv6Address;
  /// The IPv4 prefix that contains both ends' IPv4 addresses.
  final String? sessionPrefixV4;
  /// The IPv6 prefix that contains both ends' IPv6 addresses.
  final String? sessionPrefixV6;

  /// Creates a new [BgpSession].
  /// [maxPrefixesAdvertisedV4] The maximum number of prefixes advertised over the IPv4 session.
  /// [maxPrefixesAdvertisedV6] The maximum number of prefixes advertised over the IPv6 session.
  /// [md5AuthenticationKey] The MD5 authentication key of the session.
  /// [microsoftSessionIPv4Address] The IPv4 session address on Microsoft's end.
  /// [microsoftSessionIPv6Address] The IPv6 session address on Microsoft's end.
  /// [peerSessionIPv4Address] The IPv4 session address on peer's end.
  /// [peerSessionIPv6Address] The IPv6 session address on peer's end.
  /// [sessionPrefixV4] The IPv4 prefix that contains both ends' IPv4 addresses.
  /// [sessionPrefixV6] The IPv6 prefix that contains both ends' IPv6 addresses.
  BgpSession({
    this.maxPrefixesAdvertisedV4,
    this.maxPrefixesAdvertisedV6,
    this.md5AuthenticationKey,
    this.microsoftSessionIPv4Address,
    this.microsoftSessionIPv6Address,
    this.peerSessionIPv4Address,
    this.peerSessionIPv6Address,
    this.sessionPrefixV4,
    this.sessionPrefixV6,
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
    };
  }

  factory BgpSession.fromMap(Map<String, dynamic> map) {
    return BgpSession(
      maxPrefixesAdvertisedV4: map['maxPrefixesAdvertisedV4'] == null ? null : map['maxPrefixesAdvertisedV4'] as int,
      maxPrefixesAdvertisedV6: map['maxPrefixesAdvertisedV6'] == null ? null : map['maxPrefixesAdvertisedV6'] as int,
      md5AuthenticationKey: map['md5AuthenticationKey'] == null ? null : map['md5AuthenticationKey'] as String,
      microsoftSessionIPv4Address: map['microsoftSessionIPv4Address'] == null ? null : map['microsoftSessionIPv4Address'] as String,
      microsoftSessionIPv6Address: map['microsoftSessionIPv6Address'] == null ? null : map['microsoftSessionIPv6Address'] as String,
      peerSessionIPv4Address: map['peerSessionIPv4Address'] == null ? null : map['peerSessionIPv4Address'] as String,
      peerSessionIPv6Address: map['peerSessionIPv6Address'] == null ? null : map['peerSessionIPv6Address'] as String,
      sessionPrefixV4: map['sessionPrefixV4'] == null ? null : map['sessionPrefixV4'] as String,
      sessionPrefixV6: map['sessionPrefixV6'] == null ? null : map['sessionPrefixV6'] as String,
    );
  }
}

