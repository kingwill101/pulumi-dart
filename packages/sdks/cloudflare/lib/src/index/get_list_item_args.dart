// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_list_item_get_list_item_args_doc}
/// Arguments for getListItem.
/// {@endtemplate}
/// {@macro pulumi_index_get_list_item_get_list_item_args_doc}
class GetListItemArgs {
  /// The Account ID for this resource.
  final pulumi.Input<String?>? accountId;
  /// Defines the unique ID of the item in the List.
  final pulumi.Input<String> itemId;
  /// The unique ID of the list.
  final pulumi.Input<String> listId;

  /// Creates a new [GetListItemArgs].
  /// [accountId] The Account ID for this resource.
  /// [itemId] Defines the unique ID of the item in the List.
  /// [listId] The unique ID of the list.
  const GetListItemArgs({
    this.accountId,
    required this.itemId,
    required this.listId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'itemId': itemId,
      'listId': listId,
    };
  }

  factory GetListItemArgs.fromMap(Map<String, dynamic> map) {
    return GetListItemArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemId: pulumi.Input.fromValue(map['itemId'] as String),
      listId: pulumi.Input.fromValue(map['listId'] as String),
    );
  }
}
