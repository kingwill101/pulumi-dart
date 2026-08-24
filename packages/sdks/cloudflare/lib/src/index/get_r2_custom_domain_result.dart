// ignore_for_file: unused_element, unnecessary_cast

import 'get_r2_custom_domain_status.dart';

/// Result data returned by getR2CustomDomain.
class GetR2CustomDomainResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  /// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  final List<String>? ciphers;
  /// Name of the custom domain.
  final String? domain;
  /// Whether this bucket is publicly accessible at the specified custom domain.
  final bool? enabled;
  /// Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// Available values: "1.0", "1.1", "1.2", "1.3".
  final String? minTls;
  final GetR2CustomDomainStatus? status;
  /// Zone ID of the custom domain resides in.
  final String? zoneId;
  /// Zone that the custom domain resides in.
  final String? zoneName;

  /// Creates a new [GetR2CustomDomainResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [ciphers] An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  /// [domain] Name of the custom domain.
  /// [enabled] Whether this bucket is publicly accessible at the specified custom domain.
  /// [minTls] Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// [status] Optional.
  /// [zoneId] Zone ID of the custom domain resides in.
  /// [zoneName] Zone that the custom domain resides in.
  const GetR2CustomDomainResult({
    this.accountId,
    this.bucketName,
    this.ciphers,
    this.domain,
    this.enabled,
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
      'minTls': ?minTls,
      'status': ?status?.toMap(),
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetR2CustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetR2CustomDomainResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      minTls: (() { final guardedValue = map['minTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return GetR2CustomDomainStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
