// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_requested_run_duration.dart';
import 'resize_request_status.dart';

/// Input properties used for looking up and filtering ResizeRequest resources.
class ResizeRequestState {
  /// The creation timestamp for this resize request in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resize-request.
  final pulumi.Input<String>? description;
  /// The reference of the instance group manager this ResizeRequest is a part of.
  final pulumi.Input<String>? instanceGroupManager;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// Structure is documented below.
  final pulumi.Input<ResizeRequestRequestedRunDuration>? requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int>? resizeBy;
  /// Current state of the request.
  final pulumi.Input<String>? state;
  /// Status of the request.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatus>>? statuses;
  /// The reference of the compute zone scoping this request. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [ResizeRequestState].
  /// [creationTimestamp] The creation timestamp for this resize request in RFC3339 text format.
  /// [description] An optional description of this resize-request.
  /// [instanceGroupManager] The reference of the instance group manager this ResizeRequest is a part of.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] The ID of the project in which the resource belongs.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [state] Current state of the request.
  /// [statuses] Status of the request.
  /// [zone] The reference of the compute zone scoping this request. If it is not provided, the provider zone is used.
  ResizeRequestState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceGroupManager,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<ResizeRequestRequestedRunDuration>? requestedRunDuration,
    pulumi.Output<int>? resizeBy,
    pulumi.Output<String>? state,
    pulumi.Output<List<ResizeRequestStatus>>? statuses,
    pulumi.Output<String>? zone,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceGroupManager = pulumi.Input.asOptionalInput<String>(instanceGroupManager),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestedRunDuration = pulumi.Input.asOptionalInput<ResizeRequestRequestedRunDuration>(requestedRunDuration),
      resizeBy = pulumi.Input.asOptionalInput<int>(resizeBy),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<ResizeRequestStatus>>(statuses),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'instanceGroupManager': ?instanceGroupManager,
      'name': ?name,
      'project': ?project,
      'requestedRunDuration': ?pulumi.Input.mapOptionalInputValue<ResizeRequestRequestedRunDuration, Map<String, dynamic>>(requestedRunDuration, (value) => value.toMap()),
      'resizeBy': ?resizeBy,
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ResizeRequestStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory ResizeRequestState.fromMap(Map<String, dynamic> map) {
    return ResizeRequestState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceGroupManager: map['instanceGroupManager'] == null ? null : pulumi.Output.create<String>(map['instanceGroupManager'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestedRunDuration: map['requestedRunDuration'] == null ? null : pulumi.Output.create<ResizeRequestRequestedRunDuration>(ResizeRequestRequestedRunDuration.fromMap((map['requestedRunDuration'] as Map).cast<String, dynamic>())),
      resizeBy: map['resizeBy'] == null ? null : pulumi.Output.create<int>(map['resizeBy'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<ResizeRequestStatus>>(pulumi.Input.decodeList<ResizeRequestStatus>(map['statuses'], (value) => ResizeRequestStatus.fromMap((value as Map).cast<String, dynamic>()))),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

