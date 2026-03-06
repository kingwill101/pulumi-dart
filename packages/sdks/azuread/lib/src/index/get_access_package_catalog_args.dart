// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_access_package_catalog_get_access_package_catalog_args_doc}
/// Arguments for getAccessPackageCatalog.
/// {@endtemplate}
/// {@macro pulumi_index_get_access_package_catalog_get_access_package_catalog_args_doc}
class GetAccessPackageCatalogArgs {
  /// The display name of the access package catalog.
  final pulumi.Input<String>? displayName;
  /// The ID of this access package catalog.
  ///
  /// &gt; One of `display_name` or `object_id` must be specified.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetAccessPackageCatalogArgs].
  /// [displayName] The display name of the access package catalog.
  /// [objectId] The ID of this access package catalog.
  const GetAccessPackageCatalogArgs({
    this.displayName,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetAccessPackageCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageCatalogArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

