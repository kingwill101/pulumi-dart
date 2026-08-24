// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_list_items_get_list_items_args_doc}
/// Arguments for getListItems.
/// {@endtemplate}
/// {@macro pulumi_index_get_list_items_get_list_items_args_doc}
class GetListItemsArgs {
  /// The Account ID for this resource.
  final pulumi.Input<String?>? accountId;
  /// The unique ID of the list.
  final pulumi.Input<String> listId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Amount of results to include in each paginated response. A non-negative 32 bit integer.
  final pulumi.Input<int?>? perPage;
  /// A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetListItemsArgs].
  /// [accountId] The Account ID for this resource.
  /// [listId] The unique ID of the list.
  /// [maxItems] Max items to fetch, default: 1000
  /// [perPage] Amount of results to include in each paginated response. A non-negative 32 bit integer.
  /// [search] A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  const GetListItemsArgs({
    this.accountId,
    required this.listId,
    this.maxItems,
    this.perPage,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'listId': listId,
      'maxItems': ?maxItems,
      'perPage': ?perPage,
      'search': ?search,
    };
  }

  factory GetListItemsArgs.fromMap(Map<String, dynamic> map) {
    return GetListItemsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listId: pulumi.Input.fromValue(map['listId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
