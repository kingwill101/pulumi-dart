// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineJobBackfillPipelineJob {
  /// Specifies the mapping pipeline job to backfill, the name format
  /// should follow: projects/{projectId}/locations/{locationId}/datasets/{datasetId}/pipelineJobs/{pipelineJobId}.
  final pulumi.Input<String>? mappingPipelineJob;

  /// Creates a new [PipelineJobBackfillPipelineJob].
  /// [mappingPipelineJob] Specifies the mapping pipeline job to backfill, the name format
  PipelineJobBackfillPipelineJob({this.mappingPipelineJob});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mappingPipelineJob': ?mappingPipelineJob};
  }

  factory PipelineJobBackfillPipelineJob.fromMap(Map<String, dynamic> map) {
    return PipelineJobBackfillPipelineJob(
      mappingPipelineJob: (() {
        final guardedValue = map['mappingPipelineJob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
