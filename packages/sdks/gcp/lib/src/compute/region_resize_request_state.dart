// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_requested_run_duration.dart';
import 'region_resize_request_status.dart';

/// Input properties used for looking up and filtering RegionResizeRequest resources.
class RegionResizeRequestState {
  /// The creation timestamp for this resize request in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resize-request.
  final pulumi.Input<String>? description;
  /// The reference of the regional instance group manager this ResizeRequest is a part of.
  final pulumi.Input<String>? instanceGroupManager;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// Structure is documented below.
  final pulumi.Input<RegionResizeRequestRequestedRunDuration>? requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final pulumi.Input<int>? resizeBy;
  /// Current state of the request.
  final pulumi.Input<String>? state;
  /// Status of the request.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatus>>? statuses;

  /// Creates a new [RegionResizeRequestState].
  /// [creationTimestamp] The creation timestamp for this resize request in RFC3339 text format.
  /// [description] An optional description of this resize-request.
  /// [instanceGroupManager] The reference of the regional instance group manager this ResizeRequest is a part of.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [state] Current state of the request.
  /// [statuses] Status of the request.
  RegionResizeRequestState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceGroupManager,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<RegionResizeRequestRequestedRunDuration>? requestedRunDuration,
    pulumi.Output<int>? resizeBy,
    pulumi.Output<String>? state,
    pulumi.Output<List<RegionResizeRequestStatus>>? statuses,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceGroupManager = pulumi.Input.asOptionalInput<String>(instanceGroupManager),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestedRunDuration = pulumi.Input.asOptionalInput<RegionResizeRequestRequestedRunDuration>(requestedRunDuration),
      resizeBy = pulumi.Input.asOptionalInput<int>(resizeBy),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<RegionResizeRequestStatus>>(statuses);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'instanceGroupManager': ?instanceGroupManager,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'requestedRunDuration': ?pulumi.Input.mapOptionalInputValue<RegionResizeRequestRequestedRunDuration, Map<String, dynamic>>(requestedRunDuration, (value) => value.toMap()),
      'resizeBy': ?resizeBy,
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<RegionResizeRequestStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionResizeRequestState.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceGroupManager: map['instanceGroupManager'] == null ? null : pulumi.Output.create<String>(map['instanceGroupManager'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestedRunDuration: map['requestedRunDuration'] == null ? null : pulumi.Output.create<RegionResizeRequestRequestedRunDuration>(RegionResizeRequestRequestedRunDuration.fromMap((map['requestedRunDuration'] as Map).cast<String, dynamic>())),
      resizeBy: map['resizeBy'] == null ? null : pulumi.Output.create<int>(map['resizeBy'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<RegionResizeRequestStatus>>(pulumi.Input.decodeList<RegionResizeRequestStatus>(map['statuses'], (value) => RegionResizeRequestStatus.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

