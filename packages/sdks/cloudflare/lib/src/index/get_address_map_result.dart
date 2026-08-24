// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_map_ip.dart';
import 'get_address_map_membership.dart';

/// Result data returned by getAddressMap.
class GetAddressMapResult {
  /// Identifier of a Cloudflare account.
  final String? accountId;
  /// Identifier of an Address Map.
  final String? addressMapId;
  /// If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  final bool? canDelete;
  /// If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  final bool? canModifyIps;
  final String? createdAt;
  /// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  final String? defaultSni;
  /// An optional description field which may be used to describe the types of IPs or zones on the map.
  final String? description;
  /// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  final bool? enabled;
  /// Identifier of an Address Map.
  final String? id;
  /// The set of IPs on the Address Map.
  final List<GetAddressMapIp>? ips;
  /// Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  final List<GetAddressMapMembership>? memberships;
  final String? modifiedAt;

  /// Creates a new [GetAddressMapResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [addressMapId] Identifier of an Address Map.
  /// [canDelete] If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  /// [canModifyIps] If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  /// [createdAt] Optional.
  /// [defaultSni] If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  /// [description] An optional description field which may be used to describe the types of IPs or zones on the map.
  /// [enabled] Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  /// [id] Identifier of an Address Map.
  /// [ips] The set of IPs on the Address Map.
  /// [memberships] Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  /// [modifiedAt] Optional.
  const GetAddressMapResult({
    this.accountId,
    this.addressMapId,
    this.canDelete,
    this.canModifyIps,
    this.createdAt,
    this.defaultSni,
    this.description,
    this.enabled,
    this.id,
    this.ips,
    this.memberships,
    this.modifiedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'addressMapId': ?addressMapId,
      'canDelete': ?canDelete,
      'canModifyIps': ?canModifyIps,
      'createdAt': ?createdAt,
      'defaultSni': ?defaultSni,
      'description': ?description,
      'enabled': ?enabled,
      'id': ?id,
      'ips': ?(() { final guardedValue = ips; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAddressMapIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memberships': ?(() { final guardedValue = memberships; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAddressMapMembership, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'modifiedAt': ?modifiedAt,
    };
  }

  factory GetAddressMapResult.fromMap(Map<String, dynamic> map) {
    return GetAddressMapResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressMapId: (() { final guardedValue = map['addressMapId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      canDelete: (() { final guardedValue = map['canDelete']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      canModifyIps: (() { final guardedValue = map['canModifyIps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSni: (() { final guardedValue = map['defaultSni']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAddressMapIp>(guardedValue, (value) => GetAddressMapIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      memberships: (() { final guardedValue = map['memberships']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAddressMapMembership>(guardedValue, (value) => GetAddressMapMembership.fromMap((value as Map).cast<String, dynamic>())); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
