// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_workload_dataflow_flex_template_request.dart';
import 'pipeline_workload_dataflow_launch_template_request.dart';

class PipelineWorkload {
  /// Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplaterequest
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkloadDataflowFlexTemplateRequest>? dataflowFlexTemplateRequest;
  /// Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplaterequest
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkloadDataflowLaunchTemplateRequest>? dataflowLaunchTemplateRequest;

  /// Creates a new [PipelineWorkload].
  /// [dataflowFlexTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  /// [dataflowLaunchTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  PipelineWorkload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowFlexTemplateRequest': ?pulumi.Input.mapOptionalInputValue<PipelineWorkloadDataflowFlexTemplateRequest, Map<String, dynamic>>(dataflowFlexTemplateRequest, (value) => value.toMap()),
      'dataflowLaunchTemplateRequest': ?pulumi.Input.mapOptionalInputValue<PipelineWorkloadDataflowLaunchTemplateRequest, Map<String, dynamic>>(dataflowLaunchTemplateRequest, (value) => value.toMap()),
    };
  }

  factory PipelineWorkload.fromMap(Map<String, dynamic> map) {
    return PipelineWorkload(
      dataflowFlexTemplateRequest: (() { final guardedValue = map['dataflowFlexTemplateRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineWorkloadDataflowFlexTemplateRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataflowLaunchTemplateRequest: (() { final guardedValue = map['dataflowLaunchTemplateRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineWorkloadDataflowLaunchTemplateRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

