// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_hostnames_result_ownership_verification.dart';
import 'get_custom_hostnames_result_ownership_verification_http.dart';
import 'get_custom_hostnames_result_ssl.dart';

class GetCustomHostnamesResult {
  /// This is the time the hostname was created.
  final pulumi.Input<String> createdAt;
  /// Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  final pulumi.Input<Map<String, String>> customMetadata;
  /// a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  final pulumi.Input<String> customOriginServer;
  /// A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  final pulumi.Input<String> customOriginSni;
  /// The custom hostname that will point to your hostname via CNAME.
  final pulumi.Input<String> hostname;
  /// Identifier.
  final pulumi.Input<String> id;
  /// This is a record which can be placed to activate a hostname.
  final pulumi.Input<GetCustomHostnamesResultOwnershipVerification> ownershipVerification;
  /// This presents the token to be served by the given http url to activate a hostname.
  final pulumi.Input<GetCustomHostnamesResultOwnershipVerificationHttp> ownershipVerificationHttp;
  final pulumi.Input<GetCustomHostnamesResultSsl> ssl;
  /// Status of the hostname's activation.
  /// Available values: "active", "pending", "active*redeploying", "moved", "pending*deletion", "deleted", "pending*blocked", "pending*migration", "pending*provisioned", "test*pending", "test*active", "test*active*apex", "test*blocked", "testFailed", "provisioned", "blocked".
  final pulumi.Input<String> status;
  /// These are errors that were encountered while trying to activate a hostname.
  final pulumi.Input<List<String>> verificationErrors;

  /// Creates a new [GetCustomHostnamesResult].
  /// [createdAt] This is the time the hostname was created.
  /// [customMetadata] Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  /// [customOriginServer] a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  /// [customOriginSni] A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  /// [hostname] The custom hostname that will point to your hostname via CNAME.
  /// [id] Identifier.
  /// [ownershipVerification] This is a record which can be placed to activate a hostname.
  /// [ownershipVerificationHttp] This presents the token to be served by the given http url to activate a hostname.
  /// [ssl] Required.
  /// [status] Status of the hostname's activation.
  /// [verificationErrors] These are errors that were encountered while trying to activate a hostname.
  const GetCustomHostnamesResult({
    required this.createdAt,
    required this.customMetadata,
    required this.customOriginServer,
    required this.customOriginSni,
    required this.hostname,
    required this.id,
    required this.ownershipVerification,
    required this.ownershipVerificationHttp,
    required this.ssl,
    required this.status,
    required this.verificationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'customMetadata': customMetadata,
      'customOriginServer': customOriginServer,
      'customOriginSni': customOriginSni,
      'hostname': hostname,
      'id': id,
      'ownershipVerification': pulumi.Input.mapInputValue<GetCustomHostnamesResultOwnershipVerification, Map<String, dynamic>>(ownershipVerification, (value) => value.toMap()),
      'ownershipVerificationHttp': pulumi.Input.mapInputValue<GetCustomHostnamesResultOwnershipVerificationHttp, Map<String, dynamic>>(ownershipVerificationHttp, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<GetCustomHostnamesResultSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'status': status,
      'verificationErrors': verificationErrors,
    };
  }

  factory GetCustomHostnamesResult.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      customMetadata: pulumi.Input.fromValue((map['customMetadata'] as Map).cast<String, String>()),
      customOriginServer: pulumi.Input.fromValue(map['customOriginServer'] as String),
      customOriginSni: pulumi.Input.fromValue(map['customOriginSni'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ownershipVerification: pulumi.Input.fromValue(GetCustomHostnamesResultOwnershipVerification.fromMap((map['ownershipVerification']! as Map).cast<String, dynamic>())),
      ownershipVerificationHttp: pulumi.Input.fromValue(GetCustomHostnamesResultOwnershipVerificationHttp.fromMap((map['ownershipVerificationHttp']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(GetCustomHostnamesResultSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
      verificationErrors: pulumi.Input.fromValue((map['verificationErrors'] as List).cast<String>()),
    );
  }
}
