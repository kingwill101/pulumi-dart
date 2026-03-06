// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_initiative_assignment_properties.dart';

/// The 'Sandbox' management group properties.
class SandboxManagementGroupProperties {
  /// This parameter determines whether the 'Sandbox' management group will be created. If set to true, the group will be created; if set to false, it will not be created. The default value is false.
  final pulumi.Input<bool> create;
  /// Array of policy initiatives applied to the management group.
  final pulumi.Input<List<PolicyInitiativeAssignmentProperties>> policyInitiativesAssignmentProperties;

  /// Creates a new [SandboxManagementGroupProperties].
  /// [create] This parameter determines whether the 'Sandbox' management group will be created. If set to true, the group will be created; if set to false, it will not be created. The default value is false.
  /// [policyInitiativesAssignmentProperties] Array of policy initiatives applied to the management group.
  const SandboxManagementGroupProperties({
    required this.create,
    required this.policyInitiativesAssignmentProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': create,
      'policyInitiativesAssignmentProperties': pulumi.Input.mapInputValue<List<PolicyInitiativeAssignmentProperties>, List<Map<String, dynamic>>>(policyInitiativesAssignmentProperties, (value) => pulumi.Input.encodeList<PolicyInitiativeAssignmentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SandboxManagementGroupProperties.fromMap(Map<String, dynamic> map) {
    return SandboxManagementGroupProperties(
      create: pulumi.Input.fromValue(map['create'] as bool),
      policyInitiativesAssignmentProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyInitiativeAssignmentProperties>(map['policyInitiativesAssignmentProperties']!, (value) => PolicyInitiativeAssignmentProperties.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

