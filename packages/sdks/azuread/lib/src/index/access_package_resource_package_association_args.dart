// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_package_resource_package_association_access_package_resource_package_association_args_doc}
/// The set of arguments for AccessPackageResourcePackageAssociation.
/// {@endtemplate}
/// {@macro pulumi_index_access_package_resource_package_association_access_package_resource_package_association_args_doc}
class AccessPackageResourcePackageAssociationArgs {
  /// The ID of access package this resource association is configured to. Changing this forces a new resource to be created.
  final pulumi.Input<String> accessPackageId;
  /// The role of access type to the specified resource. Valid values are `Member`, or `Owner` The default is `Member`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accessType;
  /// The ID of the catalog association from the `azuread.AccessPackageResourceCatalogAssociation` resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> catalogResourceAssociationId;

  /// Creates a new [AccessPackageResourcePackageAssociationArgs].
  /// [accessPackageId] The ID of access package this resource association is configured to. Changing this forces a new resource to be created.
  /// [accessType] The role of access type to the specified resource. Valid values are `Member`, or `Owner` The default is `Member`. Changing this forces a new resource to be created.
  /// [catalogResourceAssociationId] The ID of the catalog association from the `azuread.AccessPackageResourceCatalogAssociation` resource. Changing this forces a new resource to be created.
  AccessPackageResourcePackageAssociationArgs({
    required this.accessPackageId,
    this.accessType,
    required this.catalogResourceAssociationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPackageId': accessPackageId,
      'accessType': ?accessType,
      'catalogResourceAssociationId': catalogResourceAssociationId,
    };
  }

  factory AccessPackageResourcePackageAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageResourcePackageAssociationArgs(
      accessPackageId: (map['accessPackageId'] as String).input(),
      accessType: map['accessType'] == null ? null : (map['accessType']! as String).input(),
      catalogResourceAssociationId: (map['catalogResourceAssociationId'] as String).input(),
    );
  }
}

