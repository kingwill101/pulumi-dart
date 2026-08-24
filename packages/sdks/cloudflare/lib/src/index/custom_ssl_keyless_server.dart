// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_ssl_keyless_server_tunnel.dart';

class CustomSslKeylessServer {
  /// When the Keyless SSL was created.
  final pulumi.Input<String?>? createdOn;
  /// Whether or not the Keyless SSL is on or off.
  final pulumi.Input<bool?>? enabled;
  /// The keyless SSL name.
  final pulumi.Input<String?>? host;
  /// Keyless certificate identifier tag.
  final pulumi.Input<String?>? id;
  /// When the Keyless SSL was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The keyless SSL name.
  final pulumi.Input<String?>? name;
  /// Available permissions for the Keyless SSL for the current user requesting the item.
  final pulumi.Input<List<String>?>? permissions;
  /// The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  final pulumi.Input<double?>? port;
  /// Status of the Keyless SSL.
  /// Available values: "active", "deleted".
  final pulumi.Input<String?>? status;
  /// Configuration for using Keyless SSL through a Cloudflare Tunnel.
  final pulumi.Input<CustomSslKeylessServerTunnel?>? tunnel;

  /// Creates a new [CustomSslKeylessServer].
  /// [createdOn] When the Keyless SSL was created.
  /// [enabled] Whether or not the Keyless SSL is on or off.
  /// [host] The keyless SSL name.
  /// [id] Keyless certificate identifier tag.
  /// [modifiedOn] When the Keyless SSL was last modified.
  /// [name] The keyless SSL name.
  /// [permissions] Available permissions for the Keyless SSL for the current user requesting the item.
  /// [port] The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  /// [status] Status of the Keyless SSL.
  /// [tunnel] Configuration for using Keyless SSL through a Cloudflare Tunnel.
  const CustomSslKeylessServer({
    this.createdOn,
    this.enabled,
    this.host,
    this.id,
    this.modifiedOn,
    this.name,
    this.permissions,
    this.port,
    this.status,
    this.tunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'enabled': ?enabled,
      'host': ?host,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'permissions': ?permissions,
      'port': ?port,
      'status': ?status,
      'tunnel': ?pulumi.Input.mapOptionalInputValue<CustomSslKeylessServerTunnel, Map<String, dynamic>>(tunnel, (value) => value.toMap()),
    };
  }

  factory CustomSslKeylessServer.fromMap(Map<String, dynamic> map) {
    return CustomSslKeylessServer(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnel: (() { final guardedValue = map['tunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomSslKeylessServerTunnel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
