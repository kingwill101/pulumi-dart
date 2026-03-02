// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties.dart';

/// The 'Landing Zones' management group properties..
class LandingZoneManagementGroupProperties {
  /// Management group name.
  final pulumi.Input<String> name;
  /// Array of policy initiatives applied to the management group.
  final pulumi.Input<List<PolicyInitiativeAssignmentProperties>> policyInitiativesAssignmentProperties;

  /// Creates a new [LandingZoneManagementGroupProperties].
  /// [name] Management group name.
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  LandingZoneManagementGroupProperties({
    required this.name,
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'policyInitiativesAssignmentProperties': pulumi.Input.mapInputValue<List<PolicyInitiativeAssignmentProperties>, List<Map<String, dynamic>>>(policyInitiativesAssignmentProperties, (value) => pulumi.Input.encodeList<PolicyInitiativeAssignmentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LandingZoneManagementGroupProperties.fromMap(Map<String, dynamic> map) {
    return LandingZoneManagementGroupProperties(
      name: (map['name'] as String).input(),
      policyInitiativesAssignmentProperties: (pulumi.Input.decodeList<PolicyInitiativeAssignmentProperties>(map['policyInitiativesAssignmentProperties'], (value) => PolicyInitiativeAssignmentProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

