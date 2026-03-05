// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_package_catalog_access_package_catalog_args_doc}
/// The set of arguments for AccessPackageCatalog.
/// {@endtemplate}
/// {@macro pulumi_index_access_package_catalog_access_package_catalog_args_doc}
class AccessPackageCatalogArgs {
  /// The description of the access package catalog.
  final pulumi.Input<String> description;
  /// The display name of the access package catalog.
  final pulumi.Input<String> displayName;
  /// Whether the access packages in this catalog can be requested by users outside the tenant.
  final pulumi.Input<bool>? externallyVisible;
  /// Whether the access packages in this catalog are available for management.
  final pulumi.Input<bool>? published;

  /// Creates a new [AccessPackageCatalogArgs].
  /// [description] The description of the access package catalog.
  /// [displayName] The display name of the access package catalog.
  /// [externallyVisible] Whether the access packages in this catalog can be requested by users outside the tenant.
  /// [published] Whether the access packages in this catalog are available for management.
  AccessPackageCatalogArgs({
    required this.description,
    required this.displayName,
    this.externallyVisible,
    this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'externallyVisible': ?externallyVisible,
      'published': ?published,
    };
  }

  factory AccessPackageCatalogArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageCatalogArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      externallyVisible: (() { final guardedValue = map['externallyVisible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      published: (() { final guardedValue = map['published']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

