// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NamedLocationIp {
  /// List of IP address ranges in IPv4 CIDR format (e.g. `1.2.3.4/32`) or any allowable IPv6 format from IETF RFC596. Each CIDR prefix must be `/8` or larger.
  final pulumi.Input<List<String>> ipRanges;
  /// Whether the named location is trusted. Defaults to `false`.
  final pulumi.Input<bool>? trusted;

  /// Creates a new [NamedLocationIp].
  /// [ipRanges] List of IP address ranges in IPv4 CIDR format (e.g. `1.2.3.4/32`) or any allowable IPv6 format from IETF RFC596. Each CIDR prefix must be `/8` or larger.
  /// [trusted] Whether the named location is trusted. Defaults to `false`.
  NamedLocationIp({
    required this.ipRanges,
    this.trusted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRanges': ipRanges,
      'trusted': ?trusted,
    };
  }

  factory NamedLocationIp.fromMap(Map<String, dynamic> map) {
    return NamedLocationIp(
      ipRanges: ((map['ipRanges'] as List).cast<String>()).input(),
      trusted: map['trusted'] == null ? null : (map['trusted']! as bool).input(),
    );
  }
}

