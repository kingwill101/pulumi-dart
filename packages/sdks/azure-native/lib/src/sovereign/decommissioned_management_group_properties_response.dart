// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties_response.dart';

/// The 'Decommissioned' management group properties.
class DecommissionedManagementGroupPropertiesResponse {
  /// This parameter determines whether the 'Decommissioned' management group will be created. If set to true, the group will be created; if set to false, it will not be created. The default value is false.
  final pulumi.Input<bool> create;
  /// Array of policy initiatives applied to the management group.
  final pulumi.Input<List<PolicyInitiativeAssignmentPropertiesResponse>> policyInitiativesAssignmentProperties;

  /// Creates a new [DecommissionedManagementGroupPropertiesResponse].
  /// [create] This parameter determines whether the 'Decommissioned' management group will be created. If set to true, the group will be created; if set to false, it will not be created. The default value is false.
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  const DecommissionedManagementGroupPropertiesResponse({
    required this.create,
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': create,
      'policyInitiativesAssignmentProperties': pulumi.Input.mapInputValue<List<PolicyInitiativeAssignmentPropertiesResponse>, List<Map<String, dynamic>>>(policyInitiativesAssignmentProperties, (value) => pulumi.Input.encodeList<PolicyInitiativeAssignmentPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DecommissionedManagementGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DecommissionedManagementGroupPropertiesResponse(
      create: pulumi.Input.fromValue(map['create'] as bool),
      policyInitiativesAssignmentProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyInitiativeAssignmentPropertiesResponse>(map['policyInitiativesAssignmentProperties']!, (value) => PolicyInitiativeAssignmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

