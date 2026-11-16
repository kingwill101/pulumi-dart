// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_basic_auth_secret_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_basic_auth_secret_get_zero_trust_cws_basic_auth_secret_args_doc}
/// Arguments for getZeroTrustCwsBasicAuthSecret.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_basic_auth_secret_get_zero_trust_cws_basic_auth_secret_args_doc}
class GetZeroTrustCwsBasicAuthSecretArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// ID of the parent credential
  final pulumi.Input<String> credentialId;
  final pulumi.Input<GetZeroTrustCwsBasicAuthSecretFilter?>? filter;
  /// ID of the secret to retrieve
  final pulumi.Input<String?>? secretId;

  /// Creates a new [GetZeroTrustCwsBasicAuthSecretArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [credentialId] ID of the parent credential
  /// [filter] Optional.
  /// [secretId] ID of the secret to retrieve
  const GetZeroTrustCwsBasicAuthSecretArgs({
    required this.accountId,
    required this.credentialId,
    this.filter,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'credentialId': credentialId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsBasicAuthSecretFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'secretId': ?secretId,
    };
  }

  factory GetZeroTrustCwsBasicAuthSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsBasicAuthSecretArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      credentialId: pulumi.Input.fromValue(map['credentialId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsBasicAuthSecretFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
