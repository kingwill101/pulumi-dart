// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_account_key_get_account_key_args_doc}
/// Arguments for getAccountKey.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_account_key_get_account_key_args_doc}
class GetAccountKeyArgs {
  /// The name of the service account key. This must have format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{KEYID}`, where `{ACCOUNT}`
  /// is the email address or unique id of the service account.
  final pulumi.Input<String> name;

  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  final pulumi.Input<String>? publicKeyType;

  /// Creates a new [GetAccountKeyArgs].
  /// [name] The name of the service account key. This must have format
  /// [publicKeyType] The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  GetAccountKeyArgs({required this.name, this.publicKeyType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'publicKeyType': ?publicKeyType};
  }

  factory GetAccountKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicKeyType: (() {
        final guardedValue = map['publicKeyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
