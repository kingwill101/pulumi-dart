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
    required pulumi.Output<String> accessPackageId,
    pulumi.Output<String>? accessType,
    required pulumi.Output<String> catalogResourceAssociationId,
  }) :
      accessPackageId = pulumi.Input.asInput<String>(accessPackageId),
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      catalogResourceAssociationId = pulumi.Input.asInput<String>(catalogResourceAssociationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPackageId': accessPackageId,
      'accessType': ?accessType,
      'catalogResourceAssociationId': catalogResourceAssociationId,
    };
  }

  factory AccessPackageResourcePackageAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageResourcePackageAssociationArgs(
      accessPackageId: pulumi.Output.create<String>(map['accessPackageId'] as String),
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      catalogResourceAssociationId: pulumi.Output.create<String>(map['catalogResourceAssociationId'] as String),
    );
  }
}

