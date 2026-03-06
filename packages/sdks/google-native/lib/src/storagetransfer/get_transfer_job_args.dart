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
  const GetTransferJobArgs({
    required this.projectId,
    required this.transferJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'transferJobId': transferJobId,
    };
  }

  factory GetTransferJobArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferJobArgs(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      transferJobId: pulumi.Input.fromValue(map['transferJobId'] as String),
    );
  }
}

