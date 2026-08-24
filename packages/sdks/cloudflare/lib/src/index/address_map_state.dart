// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_map_membership.dart';

/// Input properties used for looking up and filtering AddressMap resources.
class AddressMapState {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String?>? accountId;
  /// If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  final pulumi.Input<bool?>? canDelete;
  /// If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  final pulumi.Input<bool?>? canModifyIps;
  final pulumi.Input<String?>? createdAt;
  /// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  final pulumi.Input<String?>? defaultSni;
  /// An optional description field which may be used to describe the types of IPs or zones on the map.
  final pulumi.Input<String?>? description;
  /// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<List<String>?>? ips;
  /// Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  final pulumi.Input<List<AddressMapMembership>?>? memberships;
  final pulumi.Input<String?>? modifiedAt;

  /// Creates a new [AddressMapState].
  /// [accountId] Identifier of a Cloudflare account.
  /// [canDelete] If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  /// [canModifyIps] If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  /// [createdAt] Optional.
  /// [defaultSni] If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  /// [description] An optional description field which may be used to describe the types of IPs or zones on the map.
  /// [enabled] Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  /// [ips] Optional.
  /// [memberships] Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  /// [modifiedAt] Optional.
  const AddressMapState({
    this.accountId,
    this.canDelete,
    this.canModifyIps,
    this.createdAt,
    this.defaultSni,
    this.description,
    this.enabled,
    this.ips,
    this.memberships,
    this.modifiedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'canDelete': ?canDelete,
      'canModifyIps': ?canModifyIps,
      'createdAt': ?createdAt,
      'defaultSni': ?defaultSni,
      'description': ?description,
      'enabled': ?enabled,
      'ips': ?ips,
      'memberships': ?pulumi.Input.mapOptionalInputValue<List<AddressMapMembership>, List<Map<String, dynamic>>>(memberships, (value) => pulumi.Input.encodeList<AddressMapMembership, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifiedAt': ?modifiedAt,
    };
  }

  factory AddressMapState.fromMap(Map<String, dynamic> map) {
    return AddressMapState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      canDelete: (() { final guardedValue = map['canDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      canModifyIps: (() { final guardedValue = map['canModifyIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSni: (() { final guardedValue = map['defaultSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      memberships: (() { final guardedValue = map['memberships']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddressMapMembership>(guardedValue, (value) => AddressMapMembership.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
