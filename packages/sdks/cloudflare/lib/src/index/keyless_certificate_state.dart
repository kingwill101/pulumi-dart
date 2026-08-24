// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyless_certificate_tunnel.dart';

/// Input properties used for looking up and filtering KeylessCertificate resources.
class KeylessCertificateState {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String?>? bundleMethod;
  /// The zone's SSL certificate or SSL certificate and intermediate(s).
  final pulumi.Input<String?>? certificate;
  /// When the Keyless SSL was created.
  final pulumi.Input<String?>? createdOn;
  /// Whether or not the Keyless SSL is on or off.
  final pulumi.Input<bool?>? enabled;
  /// The keyless SSL name.
  final pulumi.Input<String?>? host;
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
  final pulumi.Input<KeylessCertificateTunnel?>? tunnel;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [KeylessCertificateState].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [certificate] The zone's SSL certificate or SSL certificate and intermediate(s).
  /// [createdOn] When the Keyless SSL was created.
  /// [enabled] Whether or not the Keyless SSL is on or off.
  /// [host] The keyless SSL name.
  /// [modifiedOn] When the Keyless SSL was last modified.
  /// [name] The keyless SSL name.
  /// [permissions] Available permissions for the Keyless SSL for the current user requesting the item.
  /// [port] The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  /// [status] Status of the Keyless SSL.
  /// [tunnel] Configuration for using Keyless SSL through a Cloudflare Tunnel.
  /// [zoneId] Identifier.
  const KeylessCertificateState({
    this.bundleMethod,
    this.certificate,
    this.createdOn,
    this.enabled,
    this.host,
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
      'bundleMethod': ?bundleMethod,
      'certificate': ?certificate,
      'createdOn': ?createdOn,
      'enabled': ?enabled,
      'host': ?host,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'permissions': ?permissions,
      'port': ?port,
      'status': ?status,
      'tunnel': ?pulumi.Input.mapOptionalInputValue<KeylessCertificateTunnel, Map<String, dynamic>>(tunnel, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory KeylessCertificateState.fromMap(Map<String, dynamic> map) {
    return KeylessCertificateState(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnel: (() { final guardedValue = map['tunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeylessCertificateTunnel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
