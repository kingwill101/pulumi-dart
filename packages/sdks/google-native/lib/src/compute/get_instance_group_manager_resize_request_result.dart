// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';
import 'instance_group_manager_resize_request_status_response.dart';
import 'queuing_policy_response.dart';

/// Result data returned by getInstanceGroupManagerResizeRequest.
class GetInstanceGroupManagerResizeRequestResult {
  /// The count of instances to create as part of this resize request.
  final int? count;
  /// The creation timestamp for this resize request in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource.
  final String? description;
  /// The resource type, which is always compute#instanceGroupManagerResizeRequest for resize requests.
  final String? kind;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  final String? name;
  /// When set, defines queing parameters for the requested deferred capacity. When unset, the request starts provisioning immediately, or fails if immediate provisioning is not possible.
  final QueuingPolicyResponse? queuingPolicy;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  final DurationResponse? requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  final int? resizeBy;
  /// The URL for this resize request. The server defines this URL.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// [Output only] Current state of the request.
  final String? state;
  /// [Output only] Status of the request.
  final InstanceGroupManagerResizeRequestStatusResponse? status;
  /// The URL of a zone where the resize request is located. Populated only for zonal resize requests.
  final String? zone;

  /// Creates a new [GetInstanceGroupManagerResizeRequestResult].
  /// [count] The count of instances to create as part of this resize request.
  /// [creationTimestamp] The creation timestamp for this resize request in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [kind] The resource type, which is always compute#instanceGroupManagerResizeRequest for resize requests.
  /// [name] The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  /// [queuingPolicy] When set, defines queing parameters for the requested deferred capacity. When unset, the request starts provisioning immediately, or fails if immediate provisioning is not possible.
  /// [requestedRunDuration] Requested run duration for instances that will be created by this request. At the end of the run duration instance will be deleted.
  /// [resizeBy] The number of instances to be created by this resize request. The group's target size will be increased by this number.
  /// [selfLink] The URL for this resize request. The server defines this URL.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [state] [Output only] Current state of the request.
  /// [status] [Output only] Status of the request.
  /// [zone] The URL of a zone where the resize request is located. Populated only for zonal resize requests.
  const GetInstanceGroupManagerResizeRequestResult({
    this.count,
    this.creationTimestamp,
    this.description,
    this.kind,
    this.name,
    this.queuingPolicy,
    this.requestedRunDuration,
    this.resizeBy,
    this.selfLink,
    this.selfLinkWithId,
    this.state,
    this.status,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'kind': ?kind,
      'name': ?name,
      'queuingPolicy': ?queuingPolicy?.toMap(),
      'requestedRunDuration': ?requestedRunDuration?.toMap(),
      'resizeBy': ?resizeBy,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'state': ?state,
      'status': ?status?.toMap(),
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupManagerResizeRequestResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResizeRequestResult(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queuingPolicy: (() { final guardedValue = map['queuingPolicy']; if (guardedValue == null) return null; return QueuingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      requestedRunDuration: (() { final guardedValue = map['requestedRunDuration']; if (guardedValue == null) return null; return DurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resizeBy: (() { final guardedValue = map['resizeBy']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return InstanceGroupManagerResizeRequestStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
