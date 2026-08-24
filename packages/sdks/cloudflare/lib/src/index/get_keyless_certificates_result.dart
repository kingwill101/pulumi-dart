// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_keyless_certificates_result_tunnel.dart';

class GetKeylessCertificatesResult {
  /// When the Keyless SSL was created.
  final pulumi.Input<String> createdOn;
  /// Whether or not the Keyless SSL is on or off.
  final pulumi.Input<bool> enabled;
  /// The keyless SSL name.
  final pulumi.Input<String> host;
  /// Keyless certificate identifier tag.
  final pulumi.Input<String> id;
  /// When the Keyless SSL was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The keyless SSL name.
  final pulumi.Input<String> name;
  /// Available permissions for the Keyless SSL for the current user requesting the item.
  final pulumi.Input<List<String>> permissions;
  /// The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  final pulumi.Input<double> port;
  /// Status of the Keyless SSL.
  /// Available values: "active", "deleted".
  final pulumi.Input<String> status;
  /// Configuration for using Keyless SSL through a Cloudflare Tunnel.
  final pulumi.Input<GetKeylessCertificatesResultTunnel> tunnel;

  /// Creates a new [GetKeylessCertificatesResult].
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
  const GetKeylessCertificatesResult({
    required this.createdOn,
    required this.enabled,
    required this.host,
    required this.id,
    required this.modifiedOn,
    required this.name,
    required this.permissions,
    required this.port,
    required this.status,
    required this.tunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'enabled': enabled,
      'host': host,
      'id': id,
      'modifiedOn': modifiedOn,
      'name': name,
      'permissions': permissions,
      'port': port,
      'status': status,
      'tunnel': pulumi.Input.mapInputValue<GetKeylessCertificatesResultTunnel, Map<String, dynamic>>(tunnel, (value) => value.toMap()),
    };
  }

  factory GetKeylessCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetKeylessCertificatesResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      port: pulumi.Input.fromValue((map['port'] as num).toDouble()),
      status: pulumi.Input.fromValue(map['status'] as String),
      tunnel: pulumi.Input.fromValue(GetKeylessCertificatesResultTunnel.fromMap((map['tunnel']! as Map).cast<String, dynamic>())),
    );
  }
}
