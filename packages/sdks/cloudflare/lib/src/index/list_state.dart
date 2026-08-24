// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_item.dart';

/// Input properties used for looking up and filtering List resources.
class ListState {
  /// The Account ID for this resource.
  final pulumi.Input<String?>? accountId;
  /// The RFC 3339 timestamp of when the list was created.
  final pulumi.Input<String?>? createdOn;
  /// An informative summary of the list.
  final pulumi.Input<String?>? description;
  /// The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  final pulumi.Input<List<ListItem>?>? items;
  /// The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// Available values: "ip", "redirect", "hostname", "asn".
  final pulumi.Input<String?>? kind;
  /// The RFC 3339 timestamp of when the list was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// An informative name for the list. Use this name in filter and rule expressions.
  final pulumi.Input<String?>? name;
  /// The number of items in the list.
  final pulumi.Input<double?>? numItems;
  /// The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  final pulumi.Input<double?>? numReferencingFilters;

  /// Creates a new [ListState].
  /// [accountId] The Account ID for this resource.
  /// [createdOn] The RFC 3339 timestamp of when the list was created.
  /// [description] An informative summary of the list.
  /// [items] The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  /// [kind] The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// [modifiedOn] The RFC 3339 timestamp of when the list was last modified.
  /// [name] An informative name for the list. Use this name in filter and rule expressions.
  /// [numItems] The number of items in the list.
  /// [numReferencingFilters] The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  const ListState({
    this.accountId,
    this.createdOn,
    this.description,
    this.items,
    this.kind,
    this.modifiedOn,
    this.name,
    this.numItems,
    this.numReferencingFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'items': ?pulumi.Input.mapOptionalInputValue<List<ListItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ListItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'numItems': ?numItems,
      'numReferencingFilters': ?numReferencingFilters,
    };
  }

  factory ListState.fromMap(Map<String, dynamic> map) {
    return ListState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListItem>(guardedValue, (value) => ListItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numItems: (() { final guardedValue = map['numItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      numReferencingFilters: (() { final guardedValue = map['numReferencingFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
