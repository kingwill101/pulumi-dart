// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_store_secrets_result.dart';

/// Result data returned by getSecretsStoreSecrets.
class GetSecretsStoreSecretsInvokeResult {
  final String? accountId;
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Order secrets by values in the given field.
  /// Available values: "name", "comment", "created", "modified", "status".
  final String? order;
  /// The items returned by the data source
  final List<GetSecretsStoreSecretsResult>? results;
  /// Only secrets with the given scopes will be returned.
  final List<String>? scopes;
  /// Search secrets using a filter string, filtering across name and comment.
  final String? search;
  final String? storeId;

  /// Creates a new [GetSecretsStoreSecretsInvokeResult].
  /// [accountId] Optional.
  /// [direction] Direction to sort objects.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Order secrets by values in the given field.
  /// [results] The items returned by the data source
  /// [scopes] Only secrets with the given scopes will be returned.
  /// [search] Search secrets using a filter string, filtering across name and comment.
  /// [storeId] Optional.
  const GetSecretsStoreSecretsInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.results,
    this.scopes,
    this.search,
    this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretsStoreSecretsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scopes': ?scopes,
      'search': ?search,
      'storeId': ?storeId,
    };
  }

  factory GetSecretsStoreSecretsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreSecretsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretsStoreSecretsResult>(guardedValue, (value) => GetSecretsStoreSecretsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
