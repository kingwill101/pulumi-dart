// ignore_for_file: unused_element, unnecessary_cast

import 'get_keyless_certificate_tunnel.dart';

/// Result data returned by getKeylessCertificate.
class GetKeylessCertificateResult {
  /// When the Keyless SSL was created.
  final String? createdOn;
  /// Whether or not the Keyless SSL is on or off.
  final bool? enabled;
  /// The keyless SSL name.
  final String? host;
  /// Identifier.
  final String? id;
  /// Identifier.
  final String? keylessCertificateId;
  /// When the Keyless SSL was last modified.
  final String? modifiedOn;
  /// The keyless SSL name.
  final String? name;
  /// Available permissions for the Keyless SSL for the current user requesting the item.
  final List<String>? permissions;
  /// The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  final double? port;
  /// Status of the Keyless SSL.
  /// Available values: "active", "deleted".
  final String? status;
  /// Configuration for using Keyless SSL through a Cloudflare Tunnel.
  final GetKeylessCertificateTunnel? tunnel;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetKeylessCertificateResult].
  /// [createdOn] When the Keyless SSL was created.
  /// [enabled] Whether or not the Keyless SSL is on or off.
  /// [host] The keyless SSL name.
  /// [id] Identifier.
  /// [keylessCertificateId] Identifier.
  /// [modifiedOn] When the Keyless SSL was last modified.
  /// [name] The keyless SSL name.
  /// [permissions] Available permissions for the Keyless SSL for the current user requesting the item.
  /// [port] The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  /// [status] Status of the Keyless SSL.
  /// [tunnel] Configuration for using Keyless SSL through a Cloudflare Tunnel.
  /// [zoneId] Identifier.
  const GetKeylessCertificateResult({
    this.createdOn,
    this.enabled,
    this.host,
    this.id,
    this.keylessCertificateId,
    this.modifiedOn,
    this.name,
    this.permissions,
    this.port,
    this.status,
    this.tunnel,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'enabled': ?enabled,
      'host': ?host,
      'id': ?id,
      'keylessCertificateId': ?keylessCertificateId,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'permissions': ?permissions,
      'port': ?port,
      'status': ?status,
      'tunnel': ?tunnel?.toMap(),
      'zoneId': ?zoneId,
    };
  }

  factory GetKeylessCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetKeylessCertificateResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keylessCertificateId: (() { final guardedValue = map['keylessCertificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnel: (() { final guardedValue = map['tunnel']; if (guardedValue == null) return null; return GetKeylessCertificateTunnel.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
