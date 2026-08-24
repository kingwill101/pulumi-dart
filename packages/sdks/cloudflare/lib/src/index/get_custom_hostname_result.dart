// ignore_for_file: unused_element, unnecessary_cast

import 'get_custom_hostname_filter.dart';
import 'get_custom_hostname_ownership_verification.dart';
import 'get_custom_hostname_ownership_verification_http.dart';
import 'get_custom_hostname_ssl.dart';

/// Result data returned by getCustomHostname.
class GetCustomHostnameResult {
  /// This is the time the hostname was created.
  final String? createdAt;
  /// Identifier.
  final String? customHostnameId;
  /// Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  final Map<String, String>? customMetadata;
  /// a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  final String? customOriginServer;
  /// A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  final String? customOriginSni;
  final GetCustomHostnameFilter? filter;
  /// The custom hostname that will point to your hostname via CNAME.
  final String? hostname;
  /// Identifier.
  final String? id;
  /// This is a record which can be placed to activate a hostname.
  final GetCustomHostnameOwnershipVerification? ownershipVerification;
  /// This presents the token to be served by the given http url to activate a hostname.
  final GetCustomHostnameOwnershipVerificationHttp? ownershipVerificationHttp;
  final GetCustomHostnameSsl? ssl;
  /// Status of the hostname's activation.
  /// Available values: "active", "pending", "active*redeploying", "moved", "pending*deletion", "deleted", "pending*blocked", "pending*migration", "pending*provisioned", "test*pending", "test*active", "test*active*apex", "test*blocked", "testFailed", "provisioned", "blocked".
  final String? status;
  /// These are errors that were encountered while trying to activate a hostname.
  final List<String>? verificationErrors;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCustomHostnameResult].
  /// [createdAt] This is the time the hostname was created.
  /// [customHostnameId] Identifier.
  /// [customMetadata] Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  /// [customOriginServer] a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  /// [customOriginSni] A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  /// [filter] Optional.
  /// [hostname] The custom hostname that will point to your hostname via CNAME.
  /// [id] Identifier.
  /// [ownershipVerification] This is a record which can be placed to activate a hostname.
  /// [ownershipVerificationHttp] This presents the token to be served by the given http url to activate a hostname.
  /// [ssl] Optional.
  /// [status] Status of the hostname's activation.
  /// [verificationErrors] These are errors that were encountered while trying to activate a hostname.
  /// [zoneId] Identifier.
  const GetCustomHostnameResult({
    this.createdAt,
    this.customHostnameId,
    this.customMetadata,
    this.customOriginServer,
    this.customOriginSni,
    this.filter,
    this.hostname,
    this.id,
    this.ownershipVerification,
    this.ownershipVerificationHttp,
    this.ssl,
    this.status,
    this.verificationErrors,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'customHostnameId': ?customHostnameId,
      'customMetadata': ?customMetadata,
      'customOriginServer': ?customOriginServer,
      'customOriginSni': ?customOriginSni,
      'filter': ?filter?.toMap(),
      'hostname': ?hostname,
      'id': ?id,
      'ownershipVerification': ?ownershipVerification?.toMap(),
      'ownershipVerificationHttp': ?ownershipVerificationHttp?.toMap(),
      'ssl': ?ssl?.toMap(),
      'status': ?status,
      'verificationErrors': ?verificationErrors,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomHostnameResult.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customHostnameId: (() { final guardedValue = map['customHostnameId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customMetadata: (() { final guardedValue = map['customMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      customOriginServer: (() { final guardedValue = map['customOriginServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customOriginSni: (() { final guardedValue = map['customOriginSni']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetCustomHostnameFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownershipVerification: (() { final guardedValue = map['ownershipVerification']; if (guardedValue == null) return null; return GetCustomHostnameOwnershipVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ownershipVerificationHttp: (() { final guardedValue = map['ownershipVerificationHttp']; if (guardedValue == null) return null; return GetCustomHostnameOwnershipVerificationHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return GetCustomHostnameSsl.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verificationErrors: (() { final guardedValue = map['verificationErrors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
