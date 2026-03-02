// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_get_secure_credential_get_secure_credential_args_doc}
/// Arguments for getSecureCredential.
/// {@endtemplate}
/// {@macro pulumi_synthetics_get_secure_credential_get_secure_credential_args_doc}
class GetSecureCredentialArgs {
  /// The account in New Relic associated with the secure credential. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  final pulumi.Input<String> key;

  /// Creates a new [GetSecureCredentialArgs].
  /// [accountId] The account in New Relic associated with the secure credential. Defaults to the account associated with the API key used.
  /// [key] The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  GetSecureCredentialArgs({
    this.accountId,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'key': key,
    };
  }

  factory GetSecureCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetSecureCredentialArgs(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

