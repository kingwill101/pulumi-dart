// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_basic_auth_credential_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_basic_auth_credential_get_zero_trust_cws_basic_auth_credential_args_doc}
/// Arguments for getZeroTrustCwsBasicAuthCredential.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_basic_auth_credential_get_zero_trust_cws_basic_auth_credential_args_doc}
class GetZeroTrustCwsBasicAuthCredentialArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// ID of the credential to retrieve
  final pulumi.Input<String?>? credentialId;
  final pulumi.Input<GetZeroTrustCwsBasicAuthCredentialFilter?>? filter;

  /// Creates a new [GetZeroTrustCwsBasicAuthCredentialArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [credentialId] ID of the credential to retrieve
  /// [filter] Optional.
  const GetZeroTrustCwsBasicAuthCredentialArgs({
    required this.accountId,
    this.credentialId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'credentialId': ?credentialId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsBasicAuthCredentialFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustCwsBasicAuthCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthCredentialArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsBasicAuthCredentialFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
