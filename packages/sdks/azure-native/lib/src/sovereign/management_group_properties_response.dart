// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties_response.dart';

/// The properties of policy initiatives applied to the management group.
class ManagementGroupPropertiesResponse {
  /// Array of policy initiatives applied to the management group.
  final pulumi.Input<List<PolicyInitiativeAssignmentPropertiesResponse>> policyInitiativesAssignmentProperties;

  /// Creates a new [ManagementGroupPropertiesResponse].
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  const ManagementGroupPropertiesResponse({
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyInitiativesAssignmentProperties': pulumi.Input.mapInputValue<List<PolicyInitiativeAssignmentPropertiesResponse>, List<Map<String, dynamic>>>(policyInitiativesAssignmentProperties, (value) => pulumi.Input.encodeList<PolicyInitiativeAssignmentPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagementGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupPropertiesResponse(
      policyInitiativesAssignmentProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyInitiativeAssignmentPropertiesResponse>(map['policyInitiativesAssignmentProperties']!, (value) => PolicyInitiativeAssignmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
