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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      iotcentralApplicationId: map['iotcentralApplicationId'] == null ? null : (map['iotcentralApplicationId']! as String).input(),
      organizationId: map['organizationId'] == null ? null : (map['organizationId']! as String).input(),
      parentOrganizationId: map['parentOrganizationId'] == null ? null : (map['parentOrganizationId']! as String).input(),
    );
  }
}

