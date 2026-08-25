// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_instance_filter.dart';
import 'os_policy_assignment_os_policy.dart';
import 'os_policy_assignment_rollout.dart';

/// {@template pulumi_osconfig_os_policy_assignment_os_policy_assignment_args_doc}
/// The set of arguments for OsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_os_policy_assignment_os_policy_assignment_args_doc}
class OsPolicyAssignmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String?>? description;
  /// Filter to select VMs. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentInstanceFilter> instanceFilter;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Resource name.
  final pulumi.Input<String?>? name;
  /// List of OS policies to be applied to the VMs.
  /// Structure is documented below.
  final pulumi.Input<List<OsPolicyAssignmentOsPolicy>> osPolicies;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// Rollout to deploy the OS policy assignment. A rollout
  /// is triggered in the following situations: 1) OSPolicyAssignment is created.
  /// 2) OSPolicyAssignment is updated and the update contains changes to one of
  /// the following fields: - instanceFilter - osPolicies 3) OSPolicyAssignment
  /// is deleted. Structure is documented below.
  final pulumi.Input<OsPolicyAssignmentRollout> rollout;
  /// Set to true to skip awaiting rollout during resource creation and update.
  final pulumi.Input<bool?>? skipAwaitRollout;

  /// Creates a new [OsPolicyAssignmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [instanceFilter] Filter to select VMs. Structure is
  /// [location] The location for the resource
  /// [name] Resource name.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [project] The project for the resource
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout
  /// [skipAwaitRollout] Set to true to skip awaiting rollout during resource creation and update.
  const OsPolicyAssignmentArgs({
    this.deletionPolicy,
    this.description,
    required this.instanceFilter,
    required this.location,
    this.name,
    required this.osPolicies,
    this.project,
    required this.rollout,
    this.skipAwaitRollout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'instanceFilter': pulumi.Input.mapInputValue<OsPolicyAssignmentInstanceFilter, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'osPolicies': pulumi.Input.mapInputValue<List<OsPolicyAssignmentOsPolicy>, List<Map<String, dynamic>>>(osPolicies, (value) => pulumi.Input.encodeList<OsPolicyAssignmentOsPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'rollout': pulumi.Input.mapInputValue<OsPolicyAssignmentRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
      'skipAwaitRollout': ?skipAwaitRollout,
    };
  }

  factory OsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceFilter: pulumi.Input.fromValue(OsPolicyAssignmentInstanceFilter.fromMap((map['instanceFilter']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentOsPolicy>(map['osPolicies']!, (value) => OsPolicyAssignmentOsPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollout: pulumi.Input.fromValue(OsPolicyAssignmentRollout.fromMap((map['rollout']! as Map).cast<String, dynamic>())),
      skipAwaitRollout: (() { final guardedValue = map['skipAwaitRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
