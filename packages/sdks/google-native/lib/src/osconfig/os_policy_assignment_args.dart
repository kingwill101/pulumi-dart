// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy.dart';
import 'ospolicy_assignment_instance_filter.dart';
import 'ospolicy_assignment_rollout.dart';

/// {@template pulumi_osconfig_v1_os_policy_assignment_args_doc}
/// The set of arguments for OsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1_os_policy_assignment_args_doc}
class OsPolicyAssignmentArgs {
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;
  /// Filter to select VMs.
  final pulumi.Input<OSPolicyAssignmentInstanceFilter> instanceFilter;
  final pulumi.Input<String>? location;
  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  final pulumi.Input<String>? name;
  /// List of OS policies to be applied to the VMs.
  final pulumi.Input<List<OSPolicy>> osPolicies;
  /// Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;
  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  final pulumi.Input<OSPolicyAssignmentRollout> rollout;

  /// Creates a new [OsPolicyAssignmentArgs].
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  /// [instanceFilter] Filter to select VMs.
  /// [location] Optional.
  /// [name] Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [osPolicyAssignmentId] Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [project] Optional.
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  OsPolicyAssignmentArgs({
    this.description,
    this.etag,
    required this.instanceFilter,
    this.location,
    this.name,
    required this.osPolicies,
    required this.osPolicyAssignmentId,
    this.project,
    required this.rollout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'instanceFilter': pulumi.Input.mapInputValue<OSPolicyAssignmentInstanceFilter, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osPolicies': pulumi.Input.mapInputValue<List<OSPolicy>, List<Map<String, dynamic>>>(osPolicies, (value) => pulumi.Input.encodeList<OSPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osPolicyAssignmentId': osPolicyAssignmentId,
      'project': ?project,
      'rollout': pulumi.Input.mapInputValue<OSPolicyAssignmentRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      instanceFilter: (OSPolicyAssignmentInstanceFilter.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      osPolicies: (pulumi.Input.decodeList<OSPolicy>(map['osPolicies'], (value) => OSPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osPolicyAssignmentId: (map['osPolicyAssignmentId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      rollout: (OSPolicyAssignmentRollout.fromMap((map['rollout'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

