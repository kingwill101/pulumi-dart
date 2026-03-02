// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_public_ipaddress.dart';

/// Public IP addresses associated with azure firewall.
class HubPublicIPAddresses {
  /// The list of Public IP addresses associated with azure firewall or IP addresses to be retained.
  final pulumi.Input<List<AzureFirewallPublicIPAddress>>? addresses;
  /// The number of Public IP addresses associated with azure firewall.
  final pulumi.Input<int>? count;

  /// Creates a new [HubPublicIPAddresses].
  /// [addresses] The list of Public IP addresses associated with azure firewall or IP addresses to be retained.
  /// [count] The number of Public IP addresses associated with azure firewall.
  HubPublicIPAddresses({
    this.addresses,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallPublicIPAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<AzureFirewallPublicIPAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'count': ?count,
    };
  }

  factory HubPublicIPAddresses.fromMap(Map<String, dynamic> map) {
    return HubPublicIPAddresses(
      addresses: map['addresses'] == null ? null : (pulumi.Input.decodeList<AzureFirewallPublicIPAddress>(map['addresses']!, (value) => AzureFirewallPublicIPAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      count: map['count'] == null ? null : (map['count']! as int).input(),
    );
  }
}

