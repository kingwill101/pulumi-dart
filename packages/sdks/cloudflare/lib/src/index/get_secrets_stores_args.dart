// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_secrets_stores_get_secrets_stores_args_doc}
/// Arguments for getSecretsStores.
/// {@endtemplate}
/// {@macro pulumi_index_get_secrets_stores_get_secrets_stores_args_doc}
class GetSecretsStoresArgs {
  final pulumi.Input<String> accountId;
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Order stores by values in the given field.
  /// Available values: "name", "created", "modified".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetSecretsStoresArgs].
  /// [accountId] Required.
  /// [direction] Direction to sort objects.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Order stores by values in the given field.
  const GetSecretsStoresArgs({
    required this.accountId,
    this.direction,
    this.maxItems,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
    };
  }

  factory GetSecretsStoresArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoresArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
