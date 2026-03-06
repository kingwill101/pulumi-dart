// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_instance_filter.dart';
import 'os_policy_assignment_os_policy.dart';
import 'os_policy_assignment_rollout.dart';

/// Input properties used for looking up and filtering OsPolicyAssignment resources.
class OsPolicyAssignmentState {
  /// Output only. Indicates that this revision has been successfully
  /// rolled out in this zone and new VMs will be assigned OS policies from this
  /// revision. For a given OS policy assignment, there is only one revision with
  /// a value of `true` for this field.
  final pulumi.Input<bool>? baseline;
  /// Output only. Indicates that this revision deletes the OS policy
  /// assignment.
  final pulumi.Input<bool>? deleted;
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// The etag for this OS policy assignment. If this is provided on
  /// update, it must match the server's etag.
  final pulumi.Input<String>? etag;
  /// Filter to select VMs. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentInstanceFilter>? instanceFilter;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// List of OS policies to be applied to the VMs.
  /// Structure is documented below.
  final pulumi.Input<List<OsPolicyAssignmentOsPolicy>>? osPolicies;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Output only. Indicates that reconciliation is in progress
  /// for the revision. This value is `true` when the `rollout_state` is one of:
  final pulumi.Input<bool>? reconciling;
  /// Output only. The timestamp that the revision was
  /// created.
  final pulumi.Input<String>? revisionCreateTime;
  /// Output only. The assignment revision ID A new revision is
  /// committed whenever a rollout is triggered for a OS policy assignment
  final pulumi.Input<String>? revisionId;
  /// Rollout to deploy the OS policy assignment. A rollout
  /// is triggered in the following situations: 1) OSPolicyAssignment is created.
  /// 2) OSPolicyAssignment is updated and the update contains changes to one of
  /// the following fields: - instance_filter - os_policies 3) OSPolicyAssignment
  /// is deleted. Structure is documented below.
  final pulumi.Input<OsPolicyAssignmentRollout>? rollout;
  /// Output only. OS policy assignment rollout state
  final pulumi.Input<String>? rolloutState;
  /// Set to true to skip awaiting rollout during resource creation and update.
  final pulumi.Input<bool>? skipAwaitRollout;
  /// Output only. Server generated unique id for the OS policy assignment
  /// resource.
  final pulumi.Input<String>? uid;

  /// Creates a new [OsPolicyAssignmentState].
  /// [baseline] Output only. Indicates that this revision has been successfully
  /// [deleted] Output only. Indicates that this revision deletes the OS policy
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this OS policy assignment. If this is provided on
  /// [instanceFilter] Filter to select VMs. Structure is
  /// [location] The location for the resource
  /// [name] Resource name.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [project] The project for the resource
  /// [reconciling] Output only. Indicates that reconciliation is in progress
  /// [revisionCreateTime] Output only. The timestamp that the revision was
  /// [revisionId] Output only. The assignment revision ID A new revision is
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout
  /// [rolloutState] Output only. OS policy assignment rollout state
  /// [skipAwaitRollout] Set to true to skip awaiting rollout during resource creation and update.
  /// [uid] Output only. Server generated unique id for the OS policy assignment
  const OsPolicyAssignmentState({
    this.baseline,
    this.deleted,
    this.description,
    this.etag,
    this.instanceFilter,
    this.location,
    this.name,
    this.osPolicies,
    this.project,
    this.reconciling,
    this.revisionCreateTime,
    this.revisionId,
    this.rollout,
    this.rolloutState,
    this.skipAwaitRollout,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': ?baseline,
      'deleted': ?deleted,
      'description': ?description,
      'etag': ?etag,
      'instanceFilter': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentInstanceFilter, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osPolicies': ?pulumi.Input.mapOptionalInputValue<List<OsPolicyAssignmentOsPolicy>, List<Map<String, dynamic>>>(osPolicies, (value) => pulumi.Input.encodeList<OsPolicyAssignmentOsPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'reconciling': ?reconciling,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'rollout': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
      'rolloutState': ?rolloutState,
      'skipAwaitRollout': ?skipAwaitRollout,
      'uid': ?uid,
    };
  }

  factory OsPolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentState(
      baseline: (() { final guardedValue = map['baseline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceFilter: (() { final guardedValue = map['instanceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentInstanceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osPolicies: (() { final guardedValue = map['osPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OsPolicyAssignmentOsPolicy>(guardedValue, (value) => OsPolicyAssignmentOsPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsPolicyAssignmentRollout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rolloutState: (() { final guardedValue = map['rolloutState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipAwaitRollout: (() { final guardedValue = map['skipAwaitRollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

