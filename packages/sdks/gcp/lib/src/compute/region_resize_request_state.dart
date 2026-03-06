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
  const RegionResizeRequestState({
    this.creationTimestamp,
    this.description,
    this.instanceGroupManager,
    this.name,
    this.project,
    this.region,
    this.requestedRunDuration,
    this.resizeBy,
    this.state,
    this.statuses,
  });

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
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceGroupManager: (() { final guardedValue = map['instanceGroupManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedRunDuration: (() { final guardedValue = map['requestedRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionResizeRequestRequestedRunDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resizeBy: (() { final guardedValue = map['resizeBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatus>(guardedValue, (value) => RegionResizeRequestStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

