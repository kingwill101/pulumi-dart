// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_map_membership.dart';

/// {@template pulumi_index_address_map_address_map_args_doc}
/// The set of arguments for AddressMap.
/// {@endtemplate}
/// {@macro pulumi_index_address_map_address_map_args_doc}
class AddressMapArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String> accountId;
  /// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  final pulumi.Input<String?>? defaultSni;
  /// An optional description field which may be used to describe the types of IPs or zones on the map.
  final pulumi.Input<String?>? description;
  /// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<List<String>?>? ips;
  /// Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  final pulumi.Input<List<AddressMapMembership>?>? memberships;

  /// Creates a new [AddressMapArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [defaultSni] If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  /// [description] An optional description field which may be used to describe the types of IPs or zones on the map.
  /// [enabled] Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  /// [ips] Optional.
  /// [memberships] Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  const AddressMapArgs({
    required this.accountId,
    this.defaultSni,
    this.description,
    this.enabled,
    this.ips,
    this.memberships,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'defaultSni': ?defaultSni,
      'description': ?description,
      'enabled': ?enabled,
      'ips': ?ips,
      'memberships': ?pulumi.Input.mapOptionalInputValue<List<AddressMapMembership>, List<Map<String, dynamic>>>(memberships, (value) => pulumi.Input.encodeList<AddressMapMembership, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AddressMapArgs.fromMap(Map<String, dynamic> map) {
    return AddressMapArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      defaultSni: (() { final guardedValue = map['defaultSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      memberships: (() { final guardedValue = map['memberships']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddressMapMembership>(guardedValue, (value) => AddressMapMembership.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
