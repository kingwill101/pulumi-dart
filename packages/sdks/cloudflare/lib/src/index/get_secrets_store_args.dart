// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_store_filter.dart';

/// {@template pulumi_index_get_secrets_store_get_secrets_store_args_doc}
/// Arguments for getSecretsStore.
/// {@endtemplate}
/// {@macro pulumi_index_get_secrets_store_get_secrets_store_args_doc}
class GetSecretsStoreArgs {
  /// Account Identifier
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetSecretsStoreFilter?>? filter;
  /// Store Identifier
  final pulumi.Input<String?>? storeId;

  /// Creates a new [GetSecretsStoreArgs].
  /// [accountId] Account Identifier
  /// [filter] Optional.
  /// [storeId] Store Identifier
  const GetSecretsStoreArgs({
    required this.accountId,
    this.filter,
    this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetSecretsStoreFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'storeId': ?storeId,
    };
  }

  factory GetSecretsStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetSecretsStoreFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
