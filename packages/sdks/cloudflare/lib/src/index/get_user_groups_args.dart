// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_user_groups_get_user_groups_args_doc}
/// Arguments for getUserGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_groups_get_user_groups_args_doc}
class GetUserGroupsArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// The sort order of returned user groups by name (ascending or descending).
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// A string used for searching for user groups containing that substring.
  final pulumi.Input<String?>? fuzzyName;
  /// ID of the user group to be fetched.
  final pulumi.Input<String?>? id;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Name of the user group to be fetched.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetUserGroupsArgs].
  /// [accountId] Account identifier tag.
  /// [direction] The sort order of returned user groups by name (ascending or descending).
  /// [fuzzyName] A string used for searching for user groups containing that substring.
  /// [id] ID of the user group to be fetched.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the user group to be fetched.
  const GetUserGroupsArgs({
    required this.accountId,
    this.direction,
    this.fuzzyName,
    this.id,
    this.maxItems,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'fuzzyName': ?fuzzyName,
      'id': ?id,
      'maxItems': ?maxItems,
      'name': ?name,
    };
  }

  factory GetUserGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fuzzyName: (() { final guardedValue = map['fuzzyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
