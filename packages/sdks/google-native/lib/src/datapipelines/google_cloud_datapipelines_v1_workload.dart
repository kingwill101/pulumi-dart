// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_launch_flex_template_request.dart';
import 'google_cloud_datapipelines_v1_launch_template_request.dart';

/// Workload details for creating the pipeline jobs.
class GoogleCloudDatapipelinesV1Workload {
  /// Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  final pulumi.Input<GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest>? dataflowFlexTemplateRequest;
  /// Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  final pulumi.Input<GoogleCloudDatapipelinesV1LaunchTemplateRequest>? dataflowLaunchTemplateRequest;

  /// Creates a new [GoogleCloudDatapipelinesV1Workload].
  /// [dataflowFlexTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  /// [dataflowLaunchTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  const GoogleCloudDatapipelinesV1Workload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowFlexTemplateRequest': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest, Map<String, dynamic>>(dataflowFlexTemplateRequest, (value) => value.toMap()),
      'dataflowLaunchTemplateRequest': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1LaunchTemplateRequest, Map<String, dynamic>>(dataflowLaunchTemplateRequest, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatapipelinesV1Workload.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1Workload(
      dataflowFlexTemplateRequest: (() { final guardedValue = map['dataflowFlexTemplateRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataflowLaunchTemplateRequest: (() { final guardedValue = map['dataflowLaunchTemplateRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

