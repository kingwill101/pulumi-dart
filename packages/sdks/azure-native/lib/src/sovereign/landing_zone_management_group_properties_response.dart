// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties_response.dart';

/// The 'Landing Zones' management group properties..
class LandingZoneManagementGroupPropertiesResponse {
  /// Management group name.
  final String name;
  /// Array of policy initiatives applied to the management group.
  final List<PolicyInitiativeAssignmentPropertiesResponse> policyInitiativesAssignmentProperties;

  /// Creates a new [LandingZoneManagementGroupPropertiesResponse].
  /// [name] Management group name.
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  LandingZoneManagementGroupPropertiesResponse({
    required this.name,
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'policyInitiativesAssignmentProperties': pulumi.Input.encodeList<PolicyInitiativeAssignmentPropertiesResponse, Map<String, dynamic>>(policyInitiativesAssignmentProperties, (value) => value.toMap()),
    };
  }

  factory LandingZoneManagementGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LandingZoneManagementGroupPropertiesResponse(
      name: map['name'] as String,
      policyInitiativesAssignmentProperties: pulumi.Input.decodeList<PolicyInitiativeAssignmentPropertiesResponse>(map['policyInitiativesAssignmentProperties'], (value) => PolicyInitiativeAssignmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

