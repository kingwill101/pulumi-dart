// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent
class GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse {
  /// Specific details for the resource. This is for internal use only.
  final pulumi.Input<Map<String, String>> resource;
  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final pulumi.Input<String> status;
  /// List of Info for the sub level resources.
  final pulumi.Input<List<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse>> sub;
  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final pulumi.Input<String> time;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse].
  /// [resource] Specific details for the resource. This is for internal use only.
  /// [status] Overall health status. Overall status is derived based on the status of each sub level resources.
  /// [sub] List of Info for the sub level resources.
  /// [time] The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse({
    required this.resource,
    required this.status,
    required this.sub,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'status': status,
      'sub': pulumi.Input.mapInputValue<List<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse>, List<Map<String, dynamic>>>(sub, (value) => pulumi.Input.encodeList<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'time': time,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse(
      resource: pulumi.Input.fromValue((map['resource'] as Map).cast<String, String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      sub: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse>(map['sub']!, (value) => GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

