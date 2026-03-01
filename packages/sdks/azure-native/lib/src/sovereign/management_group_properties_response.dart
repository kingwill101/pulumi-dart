// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties_response.dart';

/// The properties of policy initiatives applied to the management group.
class ManagementGroupPropertiesResponse {
  /// Array of policy initiatives applied to the management group.
  final List<PolicyInitiativeAssignmentPropertiesResponse> policyInitiativesAssignmentProperties;

  /// Creates a new [ManagementGroupPropertiesResponse].
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  ManagementGroupPropertiesResponse({
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyInitiativesAssignmentProperties': pulumi.Input.encodeList<PolicyInitiativeAssignmentPropertiesResponse, Map<String, dynamic>>(policyInitiativesAssignmentProperties, (value) => value.toMap()),
    };
  }

  factory ManagementGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupPropertiesResponse(
      policyInitiativesAssignmentProperties: pulumi.Input.decodeList<PolicyInitiativeAssignmentPropertiesResponse>(map['policyInitiativesAssignmentProperties'], (value) => PolicyInitiativeAssignmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

