// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountApiTokenPermissionGroupsListResult {
  /// Public ID.
  final pulumi.Input<String> id;
  /// Permission Group Name
  final pulumi.Input<String> name;
  /// Resources to which the Permission Group is scoped
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [GetAccountApiTokenPermissionGroupsListResult].
  /// [id] Public ID.
  /// [name] Permission Group Name
  /// [scopes] Resources to which the Permission Group is scoped
  const GetAccountApiTokenPermissionGroupsListResult({
    required this.id,
    required this.name,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'scopes': scopes,
    };
  }

  factory GetAccountApiTokenPermissionGroupsListResult.fromMap(Map<String, dynamic> map) {
    return GetAccountApiTokenPermissionGroupsListResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
