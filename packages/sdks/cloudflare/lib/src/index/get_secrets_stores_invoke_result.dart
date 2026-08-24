// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_stores_result.dart';

/// Result data returned by getSecretsStores.
class GetSecretsStoresInvokeResult {
  final String? accountId;
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Order stores by values in the given field.
  /// Available values: "name", "created", "modified".
  final String? order;
  /// The items returned by the data source
  final List<GetSecretsStoresResult>? results;

  /// Creates a new [GetSecretsStoresInvokeResult].
  /// [accountId] Optional.
  /// [direction] Direction to sort objects.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Order stores by values in the given field.
  /// [results] The items returned by the data source
  const GetSecretsStoresInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretsStoresResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSecretsStoresInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoresInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretsStoresResult>(guardedValue, (value) => GetSecretsStoresResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
