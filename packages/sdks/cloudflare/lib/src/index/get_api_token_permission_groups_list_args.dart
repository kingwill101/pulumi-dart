// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_token_permission_groups_list_get_api_token_permission_groups_list_args_doc}
/// Arguments for getApiTokenPermissionGroupsList.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_token_permission_groups_list_get_api_token_permission_groups_list_args_doc}
class GetApiTokenPermissionGroupsListArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by the name of the permission group.
  /// The value must be URL-encoded.
  final pulumi.Input<String?>? name;
  /// Filter by the scope of the permission group.
  /// The value must be URL-encoded.
  final pulumi.Input<String?>? scope;

  /// Creates a new [GetApiTokenPermissionGroupsListArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by the name of the permission group.
  /// [scope] Filter by the scope of the permission group.
  const GetApiTokenPermissionGroupsListArgs({
    this.maxItems,
    this.name,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'name': ?name,
      'scope': ?scope,
    };
  }

  factory GetApiTokenPermissionGroupsListArgs.fromMap(Map<String, dynamic> map) {
    return GetApiTokenPermissionGroupsListArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
