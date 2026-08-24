// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_custom_domain_status.dart';

/// Input properties used for looking up and filtering R2CustomDomain resources.
class R2CustomDomainState {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the bucket.
  final pulumi.Input<String?>? bucketName;
  /// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  final pulumi.Input<List<String>?>? ciphers;
  /// Name of the custom domain to be added.
  final pulumi.Input<String?>? domain;
  /// Whether to enable public bucket access at the custom domain. If undefined, the domain will be enabled.
  final pulumi.Input<bool?>? enabled;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  /// Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// Available values: "1.0", "1.1", "1.2", "1.3".
  final pulumi.Input<String?>? minTls;
  final pulumi.Input<R2CustomDomainStatus?>? status;
  /// Zone ID of the custom domain.
  final pulumi.Input<String?>? zoneId;
  /// Zone that the custom domain resides in.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [R2CustomDomainState].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [ciphers] An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  /// [domain] Name of the custom domain to be added.
  /// [enabled] Whether to enable public bucket access at the custom domain. If undefined, the domain will be enabled.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [minTls] Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// [status] Optional.
  /// [zoneId] Zone ID of the custom domain.
  /// [zoneName] Zone that the custom domain resides in.
  const R2CustomDomainState({
    this.accountId,
    this.bucketName,
    this.ciphers,
    this.domain,
    this.enabled,
    this.jurisdiction,
    this.minTls,
    this.status,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'ciphers': ?ciphers,
      'domain': ?domain,
      'enabled': ?enabled,
      'jurisdiction': ?jurisdiction,
      'minTls': ?minTls,
      'status': ?pulumi.Input.mapOptionalInputValue<R2CustomDomainStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory R2CustomDomainState.fromMap(Map<String, dynamic> map) {
    return R2CustomDomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTls: (() { final guardedValue = map['minTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2CustomDomainStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
