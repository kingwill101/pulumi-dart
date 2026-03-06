// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_indexing_job_get_gradientai_indexing_job_args_doc}
/// Arguments for getGradientaiIndexingJob.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_indexing_job_get_gradientai_indexing_job_args_doc}
class GetGradientaiIndexingJobArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiIndexingJobArgs].
  /// [uuid] Required.
  const GetGradientaiIndexingJobArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGradientaiIndexingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiIndexingJobArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

