// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_package_access_package_args_doc}
/// The set of arguments for AccessPackage.
/// {@endtemplate}
/// {@macro pulumi_index_access_package_access_package_args_doc}
class AccessPackageArgs {
  /// The ID of the Catalog this access package will be created in.
  final pulumi.Input<String> catalogId;
  /// The description of the access package.
  final pulumi.Input<String> description;
  /// The display name of the access package.
  final pulumi.Input<String> displayName;
  /// Whether the access package is hidden from the requestor.
  final pulumi.Input<bool>? hidden;

  /// Creates a new [AccessPackageArgs].
  /// [catalogId] The ID of the Catalog this access package will be created in.
  /// [description] The description of the access package.
  /// [displayName] The display name of the access package.
  /// [hidden] Whether the access package is hidden from the requestor.
  const AccessPackageArgs({
    required this.catalogId,
    required this.description,
    required this.displayName,
    this.hidden,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'description': description,
      'displayName': displayName,
      'hidden': ?hidden,
    };
  }

  factory AccessPackageArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
