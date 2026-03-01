// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_osconfig_v1alpha.dart';
import 'ospolicy_assignment_rollout_osconfig_v1alpha.dart';
import 'ospolicy_osconfig_v1alpha.dart';

/// {@template pulumi_osconfig_v1alpha_os_policy_assignment_osconfig_v1alpha_args_doc}
/// The set of arguments for OsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1alpha_os_policy_assignment_osconfig_v1alpha_args_doc}
class OsPolicyAssignmentOsconfigV1alphaArgs {
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;
  /// Filter to select VMs.
  final pulumi.Input<OSPolicyAssignmentInstanceFilterOsconfigV1alpha> instanceFilter;
  final pulumi.Input<String>? location;
  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  final pulumi.Input<String>? name;
  /// List of OS policies to be applied to the VMs.
  final pulumi.Input<List<OSPolicyOsconfigV1alpha>> osPolicies;
  /// Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;
  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  final pulumi.Input<OSPolicyAssignmentRolloutOsconfigV1alpha> rollout;

  /// Creates a new [OsPolicyAssignmentOsconfigV1alphaArgs].
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  /// [instanceFilter] Filter to select VMs.
  /// [location] Optional.
  /// [name] Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [osPolicyAssignmentId] Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [project] Optional.
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  OsPolicyAssignmentOsconfigV1alphaArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    required pulumi.Output<OSPolicyAssignmentInstanceFilterOsconfigV1alpha> instanceFilter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<List<OSPolicyOsconfigV1alpha>> osPolicies,
    required pulumi.Output<String> osPolicyAssignmentId,
    pulumi.Output<String>? project,
    required pulumi.Output<OSPolicyAssignmentRolloutOsconfigV1alpha> rollout,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instanceFilter = pulumi.Input.asInput<OSPolicyAssignmentInstanceFilterOsconfigV1alpha>(instanceFilter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osPolicies = pulumi.Input.asInput<List<OSPolicyOsconfigV1alpha>>(osPolicies),
      osPolicyAssignmentId = pulumi.Input.asInput<String>(osPolicyAssignmentId),
      project = pulumi.Input.asOptionalInput<String>(project),
      rollout = pulumi.Input.asInput<OSPolicyAssignmentRolloutOsconfigV1alpha>(rollout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'instanceFilter': pulumi.Input.mapInputValue<OSPolicyAssignmentInstanceFilterOsconfigV1alpha, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osPolicies': pulumi.Input.mapInputValue<List<OSPolicyOsconfigV1alpha>, List<Map<String, dynamic>>>(osPolicies, (value) => pulumi.Input.encodeList<OSPolicyOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osPolicyAssignmentId': osPolicyAssignmentId,
      'project': ?project,
      'rollout': pulumi.Input.mapInputValue<OSPolicyAssignmentRolloutOsconfigV1alpha, Map<String, dynamic>>(rollout, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsconfigV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsconfigV1alphaArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instanceFilter: pulumi.Output.create<OSPolicyAssignmentInstanceFilterOsconfigV1alpha>(OSPolicyAssignmentInstanceFilterOsconfigV1alpha.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osPolicies: pulumi.Output.create<List<OSPolicyOsconfigV1alpha>>(pulumi.Input.decodeList<OSPolicyOsconfigV1alpha>(map['osPolicies'], (value) => OSPolicyOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
      osPolicyAssignmentId: pulumi.Output.create<String>(map['osPolicyAssignmentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rollout: pulumi.Output.create<OSPolicyAssignmentRolloutOsconfigV1alpha>(OSPolicyAssignmentRolloutOsconfigV1alpha.fromMap((map['rollout'] as Map).cast<String, dynamic>())),
    );
  }
}

