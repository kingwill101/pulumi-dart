// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyless_certificate_tunnel.dart';

/// {@template pulumi_index_keyless_certificate_keyless_certificate_args_doc}
/// The set of arguments for KeylessCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_keyless_certificate_keyless_certificate_args_doc}
class KeylessCertificateArgs {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String?>? bundleMethod;
  /// The zone's SSL certificate or SSL certificate and intermediate(s).
  final pulumi.Input<String> certificate;
  /// Whether or not the Keyless SSL is on or off.
  final pulumi.Input<bool?>? enabled;
  /// The keyless SSL name.
  final pulumi.Input<String> host;
  /// The keyless SSL name.
  final pulumi.Input<String?>? name;
  /// The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  final pulumi.Input<double?>? port;
  /// Configuration for using Keyless SSL through a Cloudflare Tunnel.
  final pulumi.Input<KeylessCertificateTunnel?>? tunnel;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [KeylessCertificateArgs].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [certificate] The zone's SSL certificate or SSL certificate and intermediate(s).
  /// [enabled] Whether or not the Keyless SSL is on or off.
  /// [host] The keyless SSL name.
  /// [name] The keyless SSL name.
  /// [port] The keyless SSL port used to communicate between Cloudflare and the client's Keyless SSL server.
  /// [tunnel] Configuration for using Keyless SSL through a Cloudflare Tunnel.
  /// [zoneId] Identifier.
  const KeylessCertificateArgs({
    this.bundleMethod,
    required this.certificate,
    this.enabled,
    required this.host,
    this.name,
    this.port,
    this.tunnel,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': ?bundleMethod,
      'certificate': certificate,
      'enabled': ?enabled,
      'host': host,
      'name': ?name,
      'port': ?port,
      'tunnel': ?pulumi.Input.mapOptionalInputValue<KeylessCertificateTunnel, Map<String, dynamic>>(tunnel, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory KeylessCertificateArgs.fromMap(Map<String, dynamic> map) {
    return KeylessCertificateArgs(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tunnel: (() { final guardedValue = map['tunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeylessCertificateTunnel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
