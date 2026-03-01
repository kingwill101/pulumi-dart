// ignore_for_file: unused_element, unnecessary_cast

import 'hub_public_ipaddresses_response.dart';

/// IP addresses associated with azure firewall.
class HubIPAddressesResponse {
  /// Private IP Address associated with azure firewall.
  final String? privateIPAddress;
  /// Public IP addresses associated with azure firewall.
  final HubPublicIPAddressesResponse? publicIPs;

  /// Creates a new [HubIPAddressesResponse].
  /// [privateIPAddress] Private IP Address associated with azure firewall.
  /// [publicIPs] Public IP addresses associated with azure firewall.
  HubIPAddressesResponse({
    this.privateIPAddress,
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'publicIPs': ?publicIPs == null ? null : publicIPs!.toMap(),
    };
  }

  factory HubIPAddressesResponse.fromMap(Map<String, dynamic> map) {
    return HubIPAddressesResponse(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      publicIPs: map['publicIPs'] == null ? null : HubPublicIPAddressesResponse.fromMap((map['publicIPs'] as Map).cast<String, dynamic>()),
    );
  }
}

