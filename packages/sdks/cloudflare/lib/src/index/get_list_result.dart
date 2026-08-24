// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_list_item.dart';

/// Result data returned by getList.
class GetListResult {
  /// The Account ID for this resource.
  final String? accountId;
  /// The RFC 3339 timestamp of when the list was created.
  final String? createdOn;
  /// An informative summary of the list.
  final String? description;
  /// The unique ID of the list.
  final String? id;
  /// The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  final List<GetListItem>? items;
  /// The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// Available values: "ip", "redirect", "hostname", "asn".
  final String? kind;
  /// The unique ID of the list.
  final String? listId;
  /// The RFC 3339 timestamp of when the list was last modified.
  final String? modifiedOn;
  /// An informative name for the list. Use this name in filter and rule expressions.
  final String? name;
  /// The number of items in the list.
  final double? numItems;
  /// The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  final double? numReferencingFilters;
  /// A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  final String? search;

  /// Creates a new [GetListResult].
  /// [accountId] The Account ID for this resource.
  /// [createdOn] The RFC 3339 timestamp of when the list was created.
  /// [description] An informative summary of the list.
  /// [id] The unique ID of the list.
  /// [items] The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  /// [kind] The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// [listId] The unique ID of the list.
  /// [modifiedOn] The RFC 3339 timestamp of when the list was last modified.
  /// [name] An informative name for the list. Use this name in filter and rule expressions.
  /// [numItems] The number of items in the list.
  /// [numReferencingFilters] The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  /// [search] A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  const GetListResult({
    this.accountId,
    this.createdOn,
    this.description,
    this.id,
    this.items,
    this.kind,
    this.listId,
    this.modifiedOn,
    this.name,
    this.numItems,
    this.numReferencingFilters,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListItem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'listId': ?listId,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'numItems': ?numItems,
      'numReferencingFilters': ?numReferencingFilters,
      'search': ?search,
    };
  }

  factory GetListResult.fromMap(Map<String, dynamic> map) {
    return GetListResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListItem>(guardedValue, (value) => GetListItem.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listId: (() { final guardedValue = map['listId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numItems: (() { final guardedValue = map['numItems']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      numReferencingFilters: (() { final guardedValue = map['numReferencingFilters']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
