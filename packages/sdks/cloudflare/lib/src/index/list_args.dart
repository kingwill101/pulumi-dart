// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_item.dart';

/// {@template pulumi_index_list_list_args_doc}
/// The set of arguments for List.
/// {@endtemplate}
/// {@macro pulumi_index_list_list_args_doc}
class ListArgs {
  /// The Account ID for this resource.
  final pulumi.Input<String> accountId;
  /// An informative summary of the list.
  final pulumi.Input<String?>? description;
  /// The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  final pulumi.Input<List<ListItem>?>? items;
  /// The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// Available values: "ip", "redirect", "hostname", "asn".
  final pulumi.Input<String> kind;
  /// An informative name for the list. Use this name in filter and rule expressions.
  final pulumi.Input<String> name;

  /// Creates a new [ListArgs].
  /// [accountId] The Account ID for this resource.
  /// [description] An informative summary of the list.
  /// [items] The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  /// [kind] The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// [name] An informative name for the list. Use this name in filter and rule expressions.
  const ListArgs({
    required this.accountId,
    this.description,
    this.items,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'items': ?pulumi.Input.mapOptionalInputValue<List<ListItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ListItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'name': name,
    };
  }

  factory ListArgs.fromMap(Map<String, dynamic> map) {
    return ListArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListItem>(guardedValue, (value) => ListItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
