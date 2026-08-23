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
  const AccessPackageResourceCatalogAssociationState({
    this.catalogId,
    this.resourceOriginId,
    this.resourceOriginSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'resourceOriginId': ?resourceOriginId,
      'resourceOriginSystem': ?resourceOriginSystem,
    };
  }

  factory AccessPackageResourceCatalogAssociationState.fromMap(Map<String, dynamic> map) {
    return AccessPackageResourceCatalogAssociationState(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOriginId: (() { final guardedValue = map['resourceOriginId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOriginSystem: (() { final guardedValue = map['resourceOriginSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
