// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_public_ipaddress_response.dart';

/// Public IP addresses associated with azure firewall.
class HubPublicIPAddressesResponse {
  /// The list of Public IP addresses associated with azure firewall or IP addresses to be retained.
  final pulumi.Input<List<AzureFirewallPublicIPAddressResponse>>? addresses;
  /// The number of Public IP addresses associated with azure firewall.
  final pulumi.Input<int>? count;

  /// Creates a new [HubPublicIPAddressesResponse].
  /// [addresses] The list of Public IP addresses associated with azure firewall or IP addresses to be retained.
  /// [count] The number of Public IP addresses associated with azure firewall.
  HubPublicIPAddressesResponse({
    this.addresses,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallPublicIPAddressResponse>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<AzureFirewallPublicIPAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'count': ?count,
    };
  }

  factory HubPublicIPAddressesResponse.fromMap(Map<String, dynamic> map) {
    return HubPublicIPAddressesResponse(
      addresses: map['addresses'] == null ? null : (pulumi.Input.decodeList<AzureFirewallPublicIPAddressResponse>(map['addresses']!, (value) => AzureFirewallPublicIPAddressResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      count: map['count'] == null ? null : (map['count']! as int).input(),
    );
  }
}

