// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_info_status.dart';

/// ResourceInfo represents the information/status of the associated resource.
class ResourceInfo {
  /// Unique Id for the resource.
  final pulumi.Input<String> id;
  /// Specific details for the resource.
  final pulumi.Input<Map<String, String>>? resource;
  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final pulumi.Input<ResourceInfoStatus>? status;
  /// List of Info for the sub level resources.
  final pulumi.Input<List<ResourceInfo>>? sub;
  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final pulumi.Input<String>? time;

  /// Creates a new [ResourceInfo].
  /// [id] Unique Id for the resource.
  /// [resource] Specific details for the resource.
  /// [status] Overall health status. Overall status is derived based on the status of each sub level resources.
  /// [sub] List of Info for the sub level resources.
  /// [time] The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  ResourceInfo({
    required this.id,
    this.resource,
    this.status,
    this.sub,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resource': ?resource,
      'status': ?pulumi.Input.mapOptionalInputValue<ResourceInfoStatus, String>(status, (value) => value.value),
      'sub': ?pulumi.Input.mapOptionalInputValue<List<ResourceInfo>, List<Map<String, dynamic>>>(sub, (value) => pulumi.Input.encodeList<ResourceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'time': ?time,
    };
  }

  factory ResourceInfo.fromMap(Map<String, dynamic> map) {
    return ResourceInfo(
      id: (map['id'] as String).input(),
      resource: map['resource'] == null ? null : ((map['resource'] as Map).cast<String, String>()).input(),
      status: map['status'] == null ? null : (ResourceInfoStatus.fromValue(map['status'] as String)).input(),
      sub: map['sub'] == null ? null : (pulumi.Input.decodeList<ResourceInfo>(map['sub'], (value) => ResourceInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      time: map['time'] == null ? null : (map['time'] as String).input(),
    );
  }
}

