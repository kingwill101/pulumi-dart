// ignore_for_file: unused_element, unnecessary_cast

import 'hub_public_ipaddresses.dart';

/// IP addresses associated with azure firewall.
class HubIPAddresses {
  /// Private IP Address associated with azure firewall.
  final String? privateIPAddress;
  /// Public IP addresses associated with azure firewall.
  final HubPublicIPAddresses? publicIPs;

  /// Creates a new [HubIPAddresses].
  /// [privateIPAddress] Private IP Address associated with azure firewall.
  /// [publicIPs] Public IP addresses associated with azure firewall.
  HubIPAddresses({
    this.privateIPAddress,
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'publicIPs': ?publicIPs == null ? null : publicIPs!.toMap(),
    };
  }

  factory HubIPAddresses.fromMap(Map<String, dynamic> map) {
    return HubIPAddresses(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      publicIPs: map['publicIPs'] == null ? null : HubPublicIPAddresses.fromMap((map['publicIPs'] as Map).cast<String, dynamic>()),
    );
  }
}

