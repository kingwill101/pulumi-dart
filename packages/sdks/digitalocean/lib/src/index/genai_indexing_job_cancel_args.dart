// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_genai_indexing_job_cancel_genai_indexing_job_cancel_args_doc}
/// The set of arguments for GenaiIndexingJobCancel.
/// {@endtemplate}
/// {@macro pulumi_index_genai_indexing_job_cancel_genai_indexing_job_cancel_args_doc}
class GenaiIndexingJobCancelArgs {
  /// The UUID of the indexing job to cancel.
  final pulumi.Input<String> uuid;

  /// Creates a new [GenaiIndexingJobCancelArgs].
  /// [uuid] The UUID of the indexing job to cancel.
  GenaiIndexingJobCancelArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GenaiIndexingJobCancelArgs.fromMap(Map<String, dynamic> map) {
    return GenaiIndexingJobCancelArgs(
      uuid: (map['uuid'] as String).input(),
    );
  }
}

