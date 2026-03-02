// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privilegedaccessmanager_get_entitlement_get_entitlement_args_doc}
/// Arguments for getEntitlement.
/// {@endtemplate}
/// {@macro pulumi_privilegedaccessmanager_get_entitlement_get_entitlement_args_doc}
class GetEntitlementArgs {
  /// ID of the Entitlement resource. This is the last part of the Entitlement's full name which is of the format `{parent}/locations/{location}/entitlements/{entitlement_id}`.
  final pulumi.Input<String>? entitlementId;
  /// The region of the Entitlement resource.
  final pulumi.Input<String>? location;
  /// The project or folder or organization that contains the resource. Format: projects/{project-id|project-number} or folders/{folder-number}  or organizations/{organization-number}
  final pulumi.Input<String>? parent;

  /// Creates a new [GetEntitlementArgs].
  /// [entitlementId] ID of the Entitlement resource. This is the last part of the Entitlement's full name which is of the format `{parent}/locations/{location}/entitlements/{entitlement_id}`.
  /// [location] The region of the Entitlement resource.
  /// [parent] The project or folder or organization that contains the resource. Format: projects/{project-id|project-number} or folders/{folder-number}  or organizations/{organization-number}
  GetEntitlementArgs({
    this.entitlementId,
    this.location,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entitlementId': ?entitlementId,
      'location': ?location,
      'parent': ?parent,
    };
  }

  factory GetEntitlementArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitlementArgs(
      entitlementId: map['entitlementId'] == null ? null : (map['entitlementId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
    );
  }
}

