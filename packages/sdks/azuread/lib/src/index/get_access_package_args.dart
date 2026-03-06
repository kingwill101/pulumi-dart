// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_access_package_get_access_package_args_doc}
/// Arguments for getAccessPackage.
/// {@endtemplate}
/// {@macro pulumi_index_get_access_package_get_access_package_args_doc}
class GetAccessPackageArgs {
  /// The ID of the Catalog this access package is in.
  final pulumi.Input<String>? catalogId;
  /// The display name of the access package.
  final pulumi.Input<String>? displayName;
  /// The ID of this access package.
  ///
  /// &gt; Either `object_id`, or both `catalog_id` and `display_name`, must be specified.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetAccessPackageArgs].
  /// [catalogId] The ID of the Catalog this access package is in.
  /// [displayName] The display name of the access package.
  /// [objectId] The ID of this access package.
  const GetAccessPackageArgs({
    this.catalogId,
    this.displayName,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetAccessPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageArgs(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

