// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_access_package_catalog_role_get_access_package_catalog_role_args_doc}
/// Arguments for getAccessPackageCatalogRole.
/// {@endtemplate}
/// {@macro pulumi_index_get_access_package_catalog_role_get_access_package_catalog_role_args_doc}
class GetAccessPackageCatalogRoleArgs {
  /// Specifies the display name of the role.
  final pulumi.Input<String>? displayName;
  /// Specifies the object ID of the role.
  ///
  /// > One of `display_name` or `object_id` must be specified.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetAccessPackageCatalogRoleArgs].
  /// [displayName] Specifies the display name of the role.
  /// [objectId] Specifies the object ID of the role.
  GetAccessPackageCatalogRoleArgs({
    this.displayName,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetAccessPackageCatalogRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageCatalogRoleArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
    );
  }
}

