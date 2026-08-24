// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressMapsResult {
  /// If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  final pulumi.Input<bool> canDelete;
  /// If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  final pulumi.Input<bool> canModifyIps;
  final pulumi.Input<String> createdAt;
  /// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  final pulumi.Input<String> defaultSni;
  /// An optional description field which may be used to describe the types of IPs or zones on the map.
  final pulumi.Input<String> description;
  /// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  final pulumi.Input<bool> enabled;
  /// Identifier of an Address Map.
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedAt;

  /// Creates a new [GetAddressMapsResult].
  /// [canDelete] If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  /// [canModifyIps] If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  /// [createdAt] Required.
  /// [defaultSni] If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  /// [description] An optional description field which may be used to describe the types of IPs or zones on the map.
  /// [enabled] Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  /// [id] Identifier of an Address Map.
  /// [modifiedAt] Required.
  const GetAddressMapsResult({
    required this.canDelete,
    required this.canModifyIps,
    required this.createdAt,
    required this.defaultSni,
    required this.description,
    required this.enabled,
    required this.id,
    required this.modifiedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canDelete': canDelete,
      'canModifyIps': canModifyIps,
      'createdAt': createdAt,
      'defaultSni': defaultSni,
      'description': description,
      'enabled': enabled,
      'id': id,
      'modifiedAt': modifiedAt,
    };
  }

  factory GetAddressMapsResult.fromMap(Map<String, dynamic> map) {
    return GetAddressMapsResult(
      canDelete: pulumi.Input.fromValue(map['canDelete'] as bool),
      canModifyIps: pulumi.Input.fromValue(map['canModifyIps'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      defaultSni: pulumi.Input.fromValue(map['defaultSni'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
    );
  }
}
