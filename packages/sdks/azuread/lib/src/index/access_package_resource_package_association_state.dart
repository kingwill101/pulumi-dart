// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPackageResourcePackageAssociation resources.
class AccessPackageResourcePackageAssociationState {
  /// The ID of access package this resource association is configured to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accessPackageId;
  /// The role of access type to the specified resource. Valid values are `Member`, or `Owner` The default is `Member`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accessType;
  /// The ID of the catalog association from the `azuread.AccessPackageResourceCatalogAssociation` resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? catalogResourceAssociationId;

  /// Creates a new [AccessPackageResourcePackageAssociationState].
  /// [accessPackageId] The ID of access package this resource association is configured to. Changing this forces a new resource to be created.
  /// [accessType] The role of access type to the specified resource. Valid values are `Member`, or `Owner` The default is `Member`. Changing this forces a new resource to be created.
  /// [catalogResourceAssociationId] The ID of the catalog association from the `azuread.AccessPackageResourceCatalogAssociation` resource. Changing this forces a new resource to be created.
  AccessPackageResourcePackageAssociationState({
    pulumi.Output<String>? accessPackageId,
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? catalogResourceAssociationId,
  }) :
      accessPackageId = pulumi.Input.asOptionalInput<String>(accessPackageId),
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      catalogResourceAssociationId = pulumi.Input.asOptionalInput<String>(catalogResourceAssociationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPackageId': ?accessPackageId,
      'accessType': ?accessType,
      'catalogResourceAssociationId': ?catalogResourceAssociationId,
    };
  }

  factory AccessPackageResourcePackageAssociationState.fromMap(Map<String, dynamic> map) {
    return AccessPackageResourcePackageAssociationState(
      accessPackageId: map['accessPackageId'] == null ? null : pulumi.Output.create<String>(map['accessPackageId'] as String),
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      catalogResourceAssociationId: map['catalogResourceAssociationId'] == null ? null : pulumi.Output.create<String>(map['catalogResourceAssociationId'] as String),
    );
  }
}

