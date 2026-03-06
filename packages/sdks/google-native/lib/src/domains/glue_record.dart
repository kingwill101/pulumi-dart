// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a host on your domain that is a DNS name server for your domain and/or other domains. Glue records are a way of making the IP address of a name server known, even when it serves DNS queries for its parent domain. For example, when `ns.example.com` is a name server for `example.com`, the host `ns.example.com` must have a glue record to break the circular DNS reference.
class GlueRecord {
  /// Domain name of the host in Punycode format.
  final pulumi.Input<String> hostName;
  /// List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. `198.51.100.1`). At least one of `ipv4_address` and `ipv6_address` must be set.
  final pulumi.Input<List<String>>? ipv4Addresses;
  /// List of IPv6 addresses corresponding to this host in the standard hexadecimal format (e.g. `2001:db8::`). At least one of `ipv4_address` and `ipv6_address` must be set.
  final pulumi.Input<List<String>>? ipv6Addresses;

  /// Creates a new [GlueRecord].
  /// [hostName] Domain name of the host in Punycode format.
  /// [ipv4Addresses] List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. `198.51.100.1`). At least one of `ipv4_address` and `ipv6_address` must be set.
  /// [ipv6Addresses] List of IPv6 addresses corresponding to this host in the standard hexadecimal format (e.g. `2001:db8::`). At least one of `ipv4_address` and `ipv6_address` must be set.
  const GlueRecord({
    required this.hostName,
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'ipv4Addresses': ?ipv4Addresses,
      'ipv6Addresses': ?ipv6Addresses,
    };
  }

  factory GlueRecord.fromMap(Map<String, dynamic> map) {
    return GlueRecord(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      ipv4Addresses: (() { final guardedValue = map['ipv4Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

