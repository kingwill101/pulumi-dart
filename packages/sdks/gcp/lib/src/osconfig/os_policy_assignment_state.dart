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
  OsPolicyAssignmentState({
    pulumi.Output<bool>? baseline,
    pulumi.Output<bool>? deleted,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<OsPolicyAssignmentInstanceFilter>? instanceFilter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<OsPolicyAssignmentOsPolicy>>? osPolicies,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? revisionCreateTime,
    pulumi.Output<String>? revisionId,
    pulumi.Output<OsPolicyAssignmentRollout>? rollout,
    pulumi.Output<String>? rolloutState,
    pulumi.Output<bool>? skipAwaitRollout,
    pulumi.Output<String>? uid,
  }) :
      baseline = pulumi.Input.asOptionalInput<bool>(baseline),
      deleted = pulumi.Input.asOptionalInput<bool>(deleted),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instanceFilter = pulumi.Input.asOptionalInput<OsPolicyAssignmentInstanceFilter>(instanceFilter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osPolicies = pulumi.Input.asOptionalInput<List<OsPolicyAssignmentOsPolicy>>(osPolicies),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      revisionCreateTime = pulumi.Input.asOptionalInput<String>(revisionCreateTime),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      rollout = pulumi.Input.asOptionalInput<OsPolicyAssignmentRollout>(rollout),
      rolloutState = pulumi.Input.asOptionalInput<String>(rolloutState),
      skipAwaitRollout = pulumi.Input.asOptionalInput<bool>(skipAwaitRollout),
      uid = pulumi.Input.asOptionalInput<String>(uid);

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
      baseline: map['baseline'] == null ? null : pulumi.Output.create<bool>(map['baseline'] as bool),
      deleted: map['deleted'] == null ? null : pulumi.Output.create<bool>(map['deleted'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instanceFilter: map['instanceFilter'] == null ? null : pulumi.Output.create<OsPolicyAssignmentInstanceFilter>(OsPolicyAssignmentInstanceFilter.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osPolicies: map['osPolicies'] == null ? null : pulumi.Output.create<List<OsPolicyAssignmentOsPolicy>>(pulumi.Input.decodeList<OsPolicyAssignmentOsPolicy>(map['osPolicies'], (value) => OsPolicyAssignmentOsPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      revisionCreateTime: map['revisionCreateTime'] == null ? null : pulumi.Output.create<String>(map['revisionCreateTime'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      rollout: map['rollout'] == null ? null : pulumi.Output.create<OsPolicyAssignmentRollout>(OsPolicyAssignmentRollout.fromMap((map['rollout'] as Map).cast<String, dynamic>())),
      rolloutState: map['rolloutState'] == null ? null : pulumi.Output.create<String>(map['rolloutState'] as String),
      skipAwaitRollout: map['skipAwaitRollout'] == null ? null : pulumi.Output.create<bool>(map['skipAwaitRollout'] as bool),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

