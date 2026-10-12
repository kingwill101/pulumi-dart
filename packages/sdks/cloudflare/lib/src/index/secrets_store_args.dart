// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_secrets_store_secrets_store_args_doc}
/// The set of arguments for SecretsStore.
/// {@endtemplate}
/// {@macro pulumi_index_secrets_store_secrets_store_args_doc}
class SecretsStoreArgs {
  final pulumi.Input<String> accountId;
  /// When true, cascade-deletes all secrets in the store before deleting the store itself.
  /// Required when deleting a non-empty store. Without this parameter, attempting to
  /// delete a non-empty store returns 409.
  final pulumi.Input<bool?>? force;
  /// The name of the store.
  final pulumi.Input<String> name;

  /// Creates a new [SecretsStoreArgs].
  /// [accountId] Required.
  /// [force] When true, cascade-deletes all secrets in the store before deleting the store itself.
  /// [name] The name of the store.
  const SecretsStoreArgs({
    required this.accountId,
    this.force,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'force': ?force,
      'name': name,
    };
  }

  factory SecretsStoreArgs.fromMap(Map<String, dynamic> map) {
    return SecretsStoreArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
