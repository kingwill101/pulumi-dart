// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_permission_groups_get_account_permission_groups_args_doc}
/// Arguments for getAccountPermissionGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_permission_groups_get_account_permission_groups_args_doc}
class GetAccountPermissionGroupsArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// ID of the permission group to be fetched.
  final pulumi.Input<String?>? id;
  /// Label of the permission group to be fetched.
  final pulumi.Input<String?>? label;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Name of the permission group to be fetched.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetAccountPermissionGroupsArgs].
  /// [accountId] Account identifier tag.
  /// [id] ID of the permission group to be fetched.
  /// [label] Label of the permission group to be fetched.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the permission group to be fetched.
  const GetAccountPermissionGroupsArgs({
    this.accountId,
    this.id,
    this.label,
    this.maxItems,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'label': ?label,
      'maxItems': ?maxItems,
      'name': ?name,
    };
  }

  factory GetAccountPermissionGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountPermissionGroupsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
