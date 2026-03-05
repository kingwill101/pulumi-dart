// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  /// Custom `display_name` for the organization.
  final pulumi.Input<String>? displayName;
  /// The application `id`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iotcentralApplicationId;
  /// The ID of the organization. Changing this forces a new resource to be created.
  final pulumi.Input<String>? organizationId;
  /// The `organization_id` of the parent organization. Changing this forces a new resource to be created.
  final pulumi.Input<String>? parentOrganizationId;

  /// Creates a new [OrganizationState].
  /// [displayName] Custom `display_name` for the organization.
  /// [iotcentralApplicationId] The application `id`. Changing this forces a new resource to be created.
  /// [organizationId] The ID of the organization. Changing this forces a new resource to be created.
  /// [parentOrganizationId] The `organization_id` of the parent organization. Changing this forces a new resource to be created.
  OrganizationState({
    this.displayName,
    this.iotcentralApplicationId,
    this.organizationId,
    this.parentOrganizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'iotcentralApplicationId': ?iotcentralApplicationId,
      'organizationId': ?organizationId,
      'parentOrganizationId': ?parentOrganizationId,
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iotcentralApplicationId: (() { final guardedValue = map['iotcentralApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentOrganizationId: (() { final guardedValue = map['parentOrganizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

