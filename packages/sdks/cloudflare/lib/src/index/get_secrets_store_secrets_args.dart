// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_secrets_store_secrets_get_secrets_store_secrets_args_doc}
/// Arguments for getSecretsStoreSecrets.
/// {@endtemplate}
/// {@macro pulumi_index_get_secrets_store_secrets_get_secrets_store_secrets_args_doc}
class GetSecretsStoreSecretsArgs {
  final pulumi.Input<String> accountId;
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Order secrets by values in the given field.
  /// Available values: "name", "comment", "created", "modified", "status".
  final pulumi.Input<String?>? order;
  /// Only secrets with the given scopes will be returned.
  final pulumi.Input<List<String>?>? scopes;
  /// Search secrets using a filter string, filtering across name and comment.
  final pulumi.Input<String?>? search;
  final pulumi.Input<String> storeId;

  /// Creates a new [GetSecretsStoreSecretsArgs].
  /// [accountId] Required.
  /// [direction] Direction to sort objects.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Order secrets by values in the given field.
  /// [scopes] Only secrets with the given scopes will be returned.
  /// [search] Search secrets using a filter string, filtering across name and comment.
  /// [storeId] Required.
  const GetSecretsStoreSecretsArgs({
    required this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.scopes,
    this.search,
    required this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'scopes': ?scopes,
      'search': ?search,
      'storeId': storeId,
    };
  }

  factory GetSecretsStoreSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreSecretsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeId: pulumi.Input.fromValue(map['storeId'] as String),
    );
  }
}
