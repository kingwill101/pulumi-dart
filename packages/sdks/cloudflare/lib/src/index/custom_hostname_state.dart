// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_ownership_verification.dart';
import 'custom_hostname_ownership_verification_http.dart';
import 'custom_hostname_ssl.dart';

/// Input properties used for looking up and filtering CustomHostname resources.
class CustomHostnameState {
  /// This is the time the hostname was created.
  final pulumi.Input<String?>? createdAt;
  /// Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  final pulumi.Input<Map<String, String>?>? customMetadata;
  /// a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  final pulumi.Input<String?>? customOriginServer;
  /// A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  final pulumi.Input<String?>? customOriginSni;
  /// The custom hostname that will point to your hostname via CNAME.
  final pulumi.Input<String?>? hostname;
  /// This is a record which can be placed to activate a hostname.
  final pulumi.Input<CustomHostnameOwnershipVerification?>? ownershipVerification;
  /// This presents the token to be served by the given http url to activate a hostname.
  final pulumi.Input<CustomHostnameOwnershipVerificationHttp?>? ownershipVerificationHttp;
  /// SSL properties used when creating the custom hostname.
  final pulumi.Input<CustomHostnameSsl?>? ssl;
  /// Status of the hostname's activation.
  /// Available values: "active", "pending", "active*redeploying", "moved", "pending*deletion", "deleted", "pending*blocked", "pending*migration", "pending*provisioned", "test*pending", "test*active", "test*active*apex", "test*blocked", "testFailed", "provisioned", "blocked".
  final pulumi.Input<String?>? status;
  /// These are errors that were encountered while trying to activate a hostname.
  final pulumi.Input<List<String>?>? verificationErrors;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomHostnameState].
  /// [createdAt] This is the time the hostname was created.
  /// [customMetadata] Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  /// [customOriginServer] a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  /// [customOriginSni] A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  /// [hostname] The custom hostname that will point to your hostname via CNAME.
  /// [ownershipVerification] This is a record which can be placed to activate a hostname.
  /// [ownershipVerificationHttp] This presents the token to be served by the given http url to activate a hostname.
  /// [ssl] SSL properties used when creating the custom hostname.
  /// [status] Status of the hostname's activation.
  /// [verificationErrors] These are errors that were encountered while trying to activate a hostname.
  /// [zoneId] Identifier.
  const CustomHostnameState({
    this.createdAt,
    this.customMetadata,
    this.customOriginServer,
    this.customOriginSni,
    this.hostname,
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
      'customMetadata': ?customMetadata,
      'customOriginServer': ?customOriginServer,
      'customOriginSni': ?customOriginSni,
      'hostname': ?hostname,
      'ownershipVerification': ?pulumi.Input.mapOptionalInputValue<CustomHostnameOwnershipVerification, Map<String, dynamic>>(ownershipVerification, (value) => value.toMap()),
      'ownershipVerificationHttp': ?pulumi.Input.mapOptionalInputValue<CustomHostnameOwnershipVerificationHttp, Map<String, dynamic>>(ownershipVerificationHttp, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<CustomHostnameSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'status': ?status,
      'verificationErrors': ?verificationErrors,
      'zoneId': ?zoneId,
    };
  }

  factory CustomHostnameState.fromMap(Map<String, dynamic> map) {
    return CustomHostnameState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customMetadata: (() { final guardedValue = map['customMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customOriginServer: (() { final guardedValue = map['customOriginServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customOriginSni: (() { final guardedValue = map['customOriginSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipVerification: (() { final guardedValue = map['ownershipVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHostnameOwnershipVerification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ownershipVerificationHttp: (() { final guardedValue = map['ownershipVerificationHttp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHostnameOwnershipVerificationHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHostnameSsl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationErrors: (() { final guardedValue = map['verificationErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
