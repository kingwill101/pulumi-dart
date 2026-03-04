// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_response_osconfig_v1alpha.dart';
import 'ospolicy_assignment_rollout_response_osconfig_v1alpha.dart';
import 'ospolicy_response_osconfig_v1alpha.dart';

/// Result data returned by getOsPolicyAssignment.
class GetOsPolicyAssignmentOsconfigV1alphaResult {
  /// Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.
  final bool baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  final bool deleted;

  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final String description;

  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  final String etag;

  /// Filter to select VMs.
  final OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha instanceFilter;

  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  final String name;

  /// List of OS policies to be applied to the VMs.
  final List<OSPolicyResponseOsconfigV1alpha> osPolicies;

  /// Indicates that reconciliation is in progress for the revision. This value is `true` when the `rollout_state` is one of: * IN_PROGRESS * CANCELLING
  final bool reconciling;

  /// The timestamp that the revision was created.
  final String revisionCreateTime;

  /// The assignment revision ID A new revision is committed whenever a rollout is triggered for a OS policy assignment
  final String revisionId;

  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  final OSPolicyAssignmentRolloutResponseOsconfigV1alpha rollout;

  /// OS policy assignment rollout state
  final String rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  final String uid;

  /// Creates a new [GetOsPolicyAssignmentOsconfigV1alphaResult].
  /// [baseline] Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.
  /// [deleted] Indicates that this revision deletes the OS policy assignment.
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  /// [instanceFilter] Filter to select VMs.
  /// [name] Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [reconciling] Indicates that reconciliation is in progress for the revision. This value is `true` when the `rollout_state` is one of: * IN_PROGRESS * CANCELLING
  /// [revisionCreateTime] The timestamp that the revision was created.
  /// [revisionId] The assignment revision ID A new revision is committed whenever a rollout is triggered for a OS policy assignment
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  /// [rolloutState] OS policy assignment rollout state
  /// [uid] Server generated unique id for the OS policy assignment resource.
  GetOsPolicyAssignmentOsconfigV1alphaResult({
    required this.baseline,
    required this.deleted,
    required this.description,
    required this.etag,
    required this.instanceFilter,
    required this.name,
    required this.osPolicies,
    required this.reconciling,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.rollout,
    required this.rolloutState,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': baseline,
      'deleted': deleted,
      'description': description,
      'etag': etag,
      'instanceFilter': instanceFilter.toMap(),
      'name': name,
      'osPolicies':
          pulumi.Input.encodeList<
            OSPolicyResponseOsconfigV1alpha,
            Map<String, dynamic>
          >(osPolicies, (value) => value.toMap()),
      'reconciling': reconciling,
      'revisionCreateTime': revisionCreateTime,
      'revisionId': revisionId,
      'rollout': rollout.toMap(),
      'rolloutState': rolloutState,
      'uid': uid,
    };
  }

  factory GetOsPolicyAssignmentOsconfigV1alphaResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOsPolicyAssignmentOsconfigV1alphaResult(
      baseline: map['baseline'] as bool,
      deleted: map['deleted'] as bool,
      description: map['description'] as String,
      etag: map['etag'] as String,
      instanceFilter:
          OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha.fromMap(
            (map['instanceFilter']! as Map).cast<String, dynamic>(),
          ),
      name: map['name'] as String,
      osPolicies: pulumi.Input.decodeList<OSPolicyResponseOsconfigV1alpha>(
        map['osPolicies']!,
        (value) => OSPolicyResponseOsconfigV1alpha.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      reconciling: map['reconciling'] as bool,
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      rollout: OSPolicyAssignmentRolloutResponseOsconfigV1alpha.fromMap(
        (map['rollout']! as Map).cast<String, dynamic>(),
      ),
      rolloutState: map['rolloutState'] as String,
      uid: map['uid'] as String,
    );
  }
}
