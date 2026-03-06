// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1alpha_resource_info_status.dart';

/// ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent
class GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo {
  /// Unique Id for the resource.
  final pulumi.Input<String> id;
  /// Specific details for the resource. This is for internal use only.
  final pulumi.Input<Map<String, String>>? resource;
  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus>? status;
  /// List of Info for the sub level resources.
  final pulumi.Input<List<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>>? sub;
  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final pulumi.Input<String>? time;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo].
  /// [id] Unique Id for the resource.
  /// [resource] Specific details for the resource. This is for internal use only.
  /// [status] Overall health status. Overall status is derived based on the status of each sub level resources.
  /// [sub] List of Info for the sub level resources.
  /// [time] The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  const GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo({
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
      'status': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus, String>(status, (value) => value.wireValue),
      'sub': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>, List<Map<String, dynamic>>>(sub, (value) => pulumi.Input.encodeList<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'time': ?time,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(
      id: pulumi.Input.fromValue(map['id'] as String),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus.fromValue(guardedValue as String)); })(),
      sub: (() { final guardedValue = map['sub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>(guardedValue, (value) => GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

