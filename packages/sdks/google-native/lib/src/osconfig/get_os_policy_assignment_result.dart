// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_assignment_instance_filter_response.dart';
import 'ospolicy_assignment_rollout_response.dart';
import 'ospolicy_response.dart';

/// Result data returned by getOsPolicyAssignment.
class GetOsPolicyAssignmentResult {
  /// Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.
  final bool? baseline;
  /// Indicates that this revision deletes the OS policy assignment.
  final bool? deleted;
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final String? description;
  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  final String? etag;
  /// Filter to select VMs.
  final OSPolicyAssignmentInstanceFilterResponse? instanceFilter;
  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  final String? name;
  /// List of OS policies to be applied to the VMs.
  final List<OSPolicyResponse>? osPolicies;
  /// Indicates that reconciliation is in progress for the revision. This value is `true` when the `rollout_state` is one of: * IN_PROGRESS * CANCELLING
  final bool? reconciling;
  /// The timestamp that the revision was created.
  final String? revisionCreateTime;
  /// The assignment revision ID A new revision is committed whenever a rollout is triggered for a OS policy assignment
  final String? revisionId;
  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  final OSPolicyAssignmentRolloutResponse? rollout;
  /// OS policy assignment rollout state
  final String? rolloutState;
  /// Server generated unique id for the OS policy assignment resource.
  final String? uid;

  /// Creates a new [GetOsPolicyAssignmentResult].
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
  const GetOsPolicyAssignmentResult({
    this.baseline,
    this.deleted,
    this.description,
    this.etag,
    this.instanceFilter,
    this.name,
    this.osPolicies,
    this.reconciling,
    this.revisionCreateTime,
    this.revisionId,
    this.rollout,
    this.rolloutState,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': ?baseline,
      'deleted': ?deleted,
      'description': ?description,
      'etag': ?etag,
      'instanceFilter': ?instanceFilter?.toMap(),
      'name': ?name,
      'osPolicies': ?(() { final guardedValue = osPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<OSPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reconciling': ?reconciling,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'rollout': ?rollout?.toMap(),
      'rolloutState': ?rolloutState,
      'uid': ?uid,
    };
  }

  factory GetOsPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetOsPolicyAssignmentResult(
      baseline: (() { final guardedValue = map['baseline']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceFilter: (() { final guardedValue = map['instanceFilter']; if (guardedValue == null) return null; return OSPolicyAssignmentInstanceFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osPolicies: (() { final guardedValue = map['osPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<OSPolicyResponse>(guardedValue, (value) => OSPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return OSPolicyAssignmentRolloutResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rolloutState: (() { final guardedValue = map['rolloutState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
