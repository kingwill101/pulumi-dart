// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_gradientai_indexing_job_cancel_gradientai_indexing_job_cancel_args_doc}
/// The set of arguments for GradientaiIndexingJobCancel.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_indexing_job_cancel_gradientai_indexing_job_cancel_args_doc}
class GradientaiIndexingJobCancelArgs {
  /// The UUID of the indexing job to cancel.
  final pulumi.Input<String> uuid;

  /// Creates a new [GradientaiIndexingJobCancelArgs].
  /// [uuid] The UUID of the indexing job to cancel.
  const GradientaiIndexingJobCancelArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GradientaiIndexingJobCancelArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiIndexingJobCancelArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
