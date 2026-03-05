// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceInfo represents the information/status of the associated resource.
class ResourceInfoResponse {
  /// Specific details for the resource.
  final pulumi.Input<Map<String, String>> resource;
  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final pulumi.Input<String> status;
  /// List of Info for the sub level resources.
  final pulumi.Input<List<ResourceInfoResponse>> sub;
  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final pulumi.Input<String> time;

  /// Creates a new [ResourceInfoResponse].
  /// [resource] Specific details for the resource.
  /// [status] Overall health status. Overall status is derived based on the status of each sub level resources.
  /// [sub] List of Info for the sub level resources.
  /// [time] The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  ResourceInfoResponse({
    required this.resource,
    required this.status,
    required this.sub,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'status': status,
      'sub': pulumi.Input.mapInputValue<List<ResourceInfoResponse>, List<Map<String, dynamic>>>(sub, (value) => pulumi.Input.encodeList<ResourceInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'time': time,
    };
  }

  factory ResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return ResourceInfoResponse(
      resource: pulumi.Input.fromValue((map['resource'] as Map).cast<String, String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      sub: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceInfoResponse>(map['sub']!, (value) => ResourceInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

