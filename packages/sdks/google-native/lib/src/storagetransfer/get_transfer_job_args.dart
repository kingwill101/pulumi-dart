// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagetransfer_v1_get_transfer_job_args_doc}
/// Arguments for getTransferJob.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_get_transfer_job_args_doc}
class GetTransferJobArgs {
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> transferJobId;

  /// Creates a new [GetTransferJobArgs].
  /// [projectId] Required.
  /// [transferJobId] Required.
  GetTransferJobArgs({
    required pulumi.Output<String> projectId,
    required pulumi.Output<String> transferJobId,
  }) :
      projectId = pulumi.Input.asInput<String>(projectId),
      transferJobId = pulumi.Input.asInput<String>(transferJobId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'transferJobId': transferJobId,
    };
  }

  factory GetTransferJobArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferJobArgs(
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      transferJobId: pulumi.Output.create<String>(map['transferJobId'] as String),
    );
  }
}

