// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1_resource_info_status.dart';

/// ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent
class GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo {
  /// Unique Id for the resource.
  final pulumi.Input<String> id;
  /// Specific details for the resource. This is for internal use only.
  final pulumi.Input<Map<String, String>>? resource;
  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus>? status;
  /// List of Info for the sub level resources.
  final pulumi.Input<List<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>>? sub;
  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final pulumi.Input<String>? time;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo].
  /// [id] Unique Id for the resource.
  /// [resource] Specific details for the resource. This is for internal use only.
  /// [status] Overall health status. Overall status is derived based on the status of each sub level resources.
  /// [sub] List of Info for the sub level resources.
  /// [time] The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo({
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
      'status': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus, String>(status, (value) => value.value),
      'sub': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>, List<Map<String, dynamic>>>(sub, (value) => pulumi.Input.encodeList<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'time': ?time,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(
      id: (map['id'] as String).input(),
      resource: map['resource'] == null ? null : ((map['resource'] as Map).cast<String, String>()).input(),
      status: map['status'] == null ? null : (GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus.fromValue(map['status'] as String)).input(),
      sub: map['sub'] == null ? null : (pulumi.Input.decodeList<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>(map['sub'], (value) => GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      time: map['time'] == null ? null : (map['time'] as String).input(),
    );
  }
}

