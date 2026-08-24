// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListsResult {
  /// The RFC 3339 timestamp of when the list was created.
  final pulumi.Input<String> createdOn;
  /// An informative summary of the list.
  final pulumi.Input<String> description;
  /// The unique ID of the list.
  final pulumi.Input<String> id;
  /// The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// Available values: "ip", "redirect", "hostname", "asn".
  final pulumi.Input<String> kind;
  /// The RFC 3339 timestamp of when the list was last modified.
  final pulumi.Input<String> modifiedOn;
  /// An informative name for the list. Use this name in filter and rule expressions.
  final pulumi.Input<String> name;
  /// The number of items in the list.
  final pulumi.Input<double> numItems;
  /// The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  final pulumi.Input<double> numReferencingFilters;

  /// Creates a new [GetListsResult].
  /// [createdOn] The RFC 3339 timestamp of when the list was created.
  /// [description] An informative summary of the list.
  /// [id] The unique ID of the list.
  /// [kind] The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// [modifiedOn] The RFC 3339 timestamp of when the list was last modified.
  /// [name] An informative name for the list. Use this name in filter and rule expressions.
  /// [numItems] The number of items in the list.
  /// [numReferencingFilters] The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  const GetListsResult({
    required this.createdOn,
    required this.description,
    required this.id,
    required this.kind,
    required this.modifiedOn,
    required this.name,
    required this.numItems,
    required this.numReferencingFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'kind': kind,
      'modifiedOn': modifiedOn,
      'name': name,
      'numItems': numItems,
      'numReferencingFilters': numReferencingFilters,
    };
  }

  factory GetListsResult.fromMap(Map<String, dynamic> map) {
    return GetListsResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      numItems: pulumi.Input.fromValue((map['numItems'] as num).toDouble()),
      numReferencingFilters: pulumi.Input.fromValue((map['numReferencingFilters'] as num).toDouble()),
    );
  }
}
