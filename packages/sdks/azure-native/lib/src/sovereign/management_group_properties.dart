// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties.dart';

/// The properties of policy initiatives applied to the management group.
class ManagementGroupProperties {
  /// Array of policy initiatives applied to the management group.
  final pulumi.Input<List<PolicyInitiativeAssignmentProperties>> policyInitiativesAssignmentProperties;

  /// Creates a new [ManagementGroupProperties].
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  ManagementGroupProperties({
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyInitiativesAssignmentProperties': pulumi.Input.mapInputValue<List<PolicyInitiativeAssignmentProperties>, List<Map<String, dynamic>>>(policyInitiativesAssignmentProperties, (value) => pulumi.Input.encodeList<PolicyInitiativeAssignmentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagementGroupProperties.fromMap(Map<String, dynamic> map) {
    return ManagementGroupProperties(
      policyInitiativesAssignmentProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyInitiativeAssignmentProperties>(map['policyInitiativesAssignmentProperties']!, (value) => PolicyInitiativeAssignmentProperties.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

