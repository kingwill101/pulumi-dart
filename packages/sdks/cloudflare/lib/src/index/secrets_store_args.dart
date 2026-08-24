// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_secrets_store_secrets_store_args_doc}
/// The set of arguments for SecretsStore.
/// {@endtemplate}
/// {@macro pulumi_index_secrets_store_secrets_store_args_doc}
class SecretsStoreArgs {
  final pulumi.Input<String> accountId;
  /// The name of the store.
  final pulumi.Input<String> name;

  /// Creates a new [SecretsStoreArgs].
  /// [accountId] Required.
  /// [name] The name of the store.
  const SecretsStoreArgs({
    required this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
    };
  }

  factory SecretsStoreArgs.fromMap(Map<String, dynamic> map) {
    return SecretsStoreArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
