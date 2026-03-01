// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPackageResourceCatalogAssociation resources.
class AccessPackageResourceCatalogAssociationState {
  /// The unique ID of the access package catalog. Changing this forces a new resource to be created.
  final pulumi.Input<String>? catalogId;
  /// The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceOriginId;
  /// The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceOriginSystem;

  /// Creates a new [AccessPackageResourceCatalogAssociationState].
  /// [catalogId] The unique ID of the access package catalog. Changing this forces a new resource to be created.
  /// [resourceOriginId] The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group. Changing this forces a new resource to be created.
  /// [resourceOriginSystem] The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`. Changing this forces a new resource to be created.
  AccessPackageResourceCatalogAssociationState({
    pulumi.Output<String>? catalogId,
    pulumi.Output<String>? resourceOriginId,
    pulumi.Output<String>? resourceOriginSystem,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      resourceOriginId = pulumi.Input.asOptionalInput<String>(resourceOriginId),
      resourceOriginSystem = pulumi.Input.asOptionalInput<String>(resourceOriginSystem);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'resourceOriginId': ?resourceOriginId,
      'resourceOriginSystem': ?resourceOriginSystem,
    };
  }

  factory AccessPackageResourceCatalogAssociationState.fromMap(Map<String, dynamic> map) {
    return AccessPackageResourceCatalogAssociationState(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      resourceOriginId: map['resourceOriginId'] == null ? null : pulumi.Output.create<String>(map['resourceOriginId'] as String),
      resourceOriginSystem: map['resourceOriginSystem'] == null ? null : pulumi.Output.create<String>(map['resourceOriginSystem'] as String),
    );
  }
}

