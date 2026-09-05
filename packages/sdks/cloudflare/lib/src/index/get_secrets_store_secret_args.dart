// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_store_secret_filter.dart';

/// {@template pulumi_index_get_secrets_store_secret_get_secrets_store_secret_args_doc}
/// Arguments for getSecretsStoreSecret.
/// {@endtemplate}
/// {@macro pulumi_index_get_secrets_store_secret_get_secrets_store_secret_args_doc}
class GetSecretsStoreSecretArgs {
  /// Account Identifier
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetSecretsStoreSecretFilter?>? filter;
  /// Secret identifier tag.
  final pulumi.Input<String?>? secretId;
  /// Store Identifier
  final pulumi.Input<String> storeId;

  /// Creates a new [GetSecretsStoreSecretArgs].
  /// [accountId] Account Identifier
  /// [filter] Optional.
  /// [secretId] Secret identifier tag.
  /// [storeId] Store Identifier
  const GetSecretsStoreSecretArgs({
    required this.accountId,
    this.filter,
    this.secretId,
    required this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetSecretsStoreSecretFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'secretId': ?secretId,
      'storeId': storeId,
    };
  }

  factory GetSecretsStoreSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreSecretArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetSecretsStoreSecretFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeId: pulumi.Input.fromValue(map['storeId'] as String),
    );
  }
}
