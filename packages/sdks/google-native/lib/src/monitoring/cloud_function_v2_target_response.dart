// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_resource_response_monitoring_v3.dart';

/// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
class CloudFunctionV2TargetResponse {
  /// The cloud_run_revision Monitored Resource associated with the GCFv2. The Synthetic Monitor execution results (metrics, logs, and spans) are reported against this Monitored Resource. This field is output only.
  final pulumi.Input<MonitoredResourceResponseMonitoringV3> cloudRunRevision;
  /// Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functions/{function} Required.
  final pulumi.Input<String> name;

  /// Creates a new [CloudFunctionV2TargetResponse].
  /// [cloudRunRevision] The cloud_run_revision Monitored Resource associated with the GCFv2. The Synthetic Monitor execution results (metrics, logs, and spans) are reported against this Monitored Resource. This field is output only.
  /// [name] Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functions/{function} Required.
  CloudFunctionV2TargetResponse({
    required this.cloudRunRevision,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunRevision': pulumi.Input.mapInputValue<MonitoredResourceResponseMonitoringV3, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'name': name,
    };
  }

  factory CloudFunctionV2TargetResponse.fromMap(Map<String, dynamic> map) {
    return CloudFunctionV2TargetResponse(
      cloudRunRevision: (MonitoredResourceResponseMonitoringV3.fromMap((map['cloudRunRevision'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

