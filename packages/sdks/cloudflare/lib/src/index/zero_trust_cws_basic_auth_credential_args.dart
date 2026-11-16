// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_basic_auth_credential_zero_trust_cws_basic_auth_credential_args_doc}
/// The set of arguments for ZeroTrustCwsBasicAuthCredential.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_basic_auth_credential_zero_trust_cws_basic_auth_credential_args_doc}
class ZeroTrustCwsBasicAuthCredentialArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Login presented by the client. Printable ASCII only, excluding space and colon.
  final pulumi.Input<String> username;

  /// Creates a new [ZeroTrustCwsBasicAuthCredentialArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [username] Login presented by the client. Printable ASCII only, excluding space and colon.
  const ZeroTrustCwsBasicAuthCredentialArgs({
    required this.accountId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'username': username,
    };
  }

  factory ZeroTrustCwsBasicAuthCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsBasicAuthCredentialArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
