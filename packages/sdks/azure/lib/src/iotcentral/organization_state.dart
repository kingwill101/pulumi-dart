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
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? iotcentralApplicationId,
    pulumi.Output<String>? organizationId,
    pulumi.Output<String>? parentOrganizationId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      iotcentralApplicationId = pulumi.Input.asOptionalInput<String>(iotcentralApplicationId),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      parentOrganizationId = pulumi.Input.asOptionalInput<String>(parentOrganizationId);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      iotcentralApplicationId: map['iotcentralApplicationId'] == null ? null : pulumi.Output.create<String>(map['iotcentralApplicationId'] as String),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
      parentOrganizationId: map['parentOrganizationId'] == null ? null : pulumi.Output.create<String>(map['parentOrganizationId'] as String),
    );
  }
}

