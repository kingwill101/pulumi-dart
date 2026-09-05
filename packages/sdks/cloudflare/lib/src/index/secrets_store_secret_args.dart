// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_secrets_store_secret_secrets_store_secret_args_doc}
/// The set of arguments for SecretsStoreSecret.
/// {@endtemplate}
/// {@macro pulumi_index_secrets_store_secret_secrets_store_secret_args_doc}
class SecretsStoreSecretArgs {
  /// Account Identifier
  final pulumi.Input<String> accountId;
  /// Freeform text describing the secret
  final pulumi.Input<String?>? comment;
  /// The name of the secret
  final pulumi.Input<String> name;
  /// The list of services that can use this secret. Valid values are `workers`, `aiGateway`, `dex`, and `access`. Must be listed in alphabetical order.
  final pulumi.Input<List<String>> scopes;
  /// Store Identifier
  final pulumi.Input<String> storeId;
  /// The value of the secret. Maximum 64 KiB (65,536 bytes). Note that this is 'write only' - no API response will provide this value, it is only used to create/modify secrets.
  final pulumi.Input<String> value;

  /// Creates a new [SecretsStoreSecretArgs].
  /// [accountId] Account Identifier
  /// [comment] Freeform text describing the secret
  /// [name] The name of the secret
  /// [scopes] The list of services that can use this secret. Valid values are `workers`, `aiGateway`, `dex`, and `access`. Must be listed in alphabetical order.
  /// [storeId] Store Identifier
  /// [value] The value of the secret. Maximum 64 KiB (65,536 bytes). Note that this is 'write only' - no API response will provide this value, it is only used to create/modify secrets.
  const SecretsStoreSecretArgs({
    required this.accountId,
    this.comment,
    required this.name,
    required this.scopes,
    required this.storeId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comment': ?comment,
      'name': name,
      'scopes': scopes,
      'storeId': storeId,
      'value': value,
    };
  }

  factory SecretsStoreSecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretsStoreSecretArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      storeId: pulumi.Input.fromValue(map['storeId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
