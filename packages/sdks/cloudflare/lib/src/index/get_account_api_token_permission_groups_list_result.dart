// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountApiTokenPermissionGroupsListResult {
  /// Product category that this permission group belongs to.
  /// Available values: "developer*platform", "ai*and*machine*learning", "dns*and*zones", "app*security", "rules*and*configuration", "cloudflare*one*and*zero*trust", "analytics*and*logs", "network*services", "media", "email*and*messaging", "cache*and*performance", "account*and*billing", "other".
  final pulumi.Input<String> category;
  /// Public ID.
  final pulumi.Input<String> id;
  /// Whether the caller can select this permission group when creating a token.
  final pulumi.Input<bool> isSelectable;
  /// Permission Group Name
  final pulumi.Input<String> name;
  /// Resources to which the Permission Group is scoped
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [GetAccountApiTokenPermissionGroupsListResult].
  /// [category] Product category that this permission group belongs to.
  /// [id] Public ID.
  /// [isSelectable] Whether the caller can select this permission group when creating a token.
  /// [name] Permission Group Name
  /// [scopes] Resources to which the Permission Group is scoped
  const GetAccountApiTokenPermissionGroupsListResult({
    required this.category,
    required this.id,
    required this.isSelectable,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'id': id,
      'isSelectable': isSelectable,
      'name': name,
      'scopes': scopes,
    };
  }

  factory GetAccountApiTokenPermissionGroupsListResult.fromMap(Map<String, dynamic> map) {
    return GetAccountApiTokenPermissionGroupsListResult(
      category: pulumi.Input.fromValue(map['category'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isSelectable: pulumi.Input.fromValue(map['isSelectable'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
