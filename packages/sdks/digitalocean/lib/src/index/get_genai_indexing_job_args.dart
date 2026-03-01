// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_genai_indexing_job_get_genai_indexing_job_args_doc}
/// Arguments for getGenaiIndexingJob.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_indexing_job_get_genai_indexing_job_args_doc}
class GetGenaiIndexingJobArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGenaiIndexingJobArgs].
  /// [uuid] Required.
  GetGenaiIndexingJobArgs({
    required pulumi.Output<String> uuid,
  }) :
      uuid = pulumi.Input.asInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGenaiIndexingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiIndexingJobArgs(
      uuid: pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

