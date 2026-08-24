// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_r2_custom_domain_r2_custom_domain_args_doc}
/// The set of arguments for R2CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_index_r2_custom_domain_r2_custom_domain_args_doc}
class R2CustomDomainArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  final pulumi.Input<List<String>?>? ciphers;
  /// Name of the custom domain to be added.
  final pulumi.Input<String> domain;
  /// Whether to enable public bucket access at the custom domain. If undefined, the domain will be enabled.
  final pulumi.Input<bool> enabled;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  /// Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// Available values: "1.0", "1.1", "1.2", "1.3".
  final pulumi.Input<String?>? minTls;
  /// Zone ID of the custom domain.
  final pulumi.Input<String> zoneId;

  /// Creates a new [R2CustomDomainArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [ciphers] An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  /// [domain] Name of the custom domain to be added.
  /// [enabled] Whether to enable public bucket access at the custom domain. If undefined, the domain will be enabled.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [minTls] Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// [zoneId] Zone ID of the custom domain.
  const R2CustomDomainArgs({
    required this.accountId,
    required this.bucketName,
    this.ciphers,
    required this.domain,
    required this.enabled,
    this.jurisdiction,
    this.minTls,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'ciphers': ?ciphers,
      'domain': domain,
      'enabled': enabled,
      'jurisdiction': ?jurisdiction,
      'minTls': ?minTls,
      'zoneId': zoneId,
    };
  }

  factory R2CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return R2CustomDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTls: (() { final guardedValue = map['minTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
