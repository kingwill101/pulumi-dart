// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the logging behavior for transfer operations. For cloud-to-cloud transfers, logs are sent to Cloud Logging. See [Read transfer logs](https://cloud.google.com/storage-transfer/docs/read-transfer-logs) for details. For transfers to or from a POSIX file system, logs are stored in the Cloud Storage bucket that is the source or sink of the transfer. See [Managing Transfer for on-premises jobs] (https://cloud.google.com/storage-transfer/docs/managing-on-prem-jobs#viewing-logs) for details.
class LoggingConfigResponse {
  /// For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  final pulumi.Input<bool> enableOnpremGcsTransferLogs;
  /// States in which `log_actions` are logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  final pulumi.Input<List<String>> logActionStates;
  /// Specifies the actions to be logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  final pulumi.Input<List<String>> logActions;

  /// Creates a new [LoggingConfigResponse].
  /// [enableOnpremGcsTransferLogs] For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  /// [logActionStates] States in which `log_actions` are logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  /// [logActions] Specifies the actions to be logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  LoggingConfigResponse({
    required this.enableOnpremGcsTransferLogs,
    required this.logActionStates,
    required this.logActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableOnpremGcsTransferLogs': enableOnpremGcsTransferLogs,
      'logActionStates': logActionStates,
      'logActions': logActions,
    };
  }

  factory LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse(
      enableOnpremGcsTransferLogs: (map['enableOnpremGcsTransferLogs'] as bool).input(),
      logActionStates: ((map['logActionStates'] as List).cast<String>()).input(),
      logActions: ((map['logActions'] as List).cast<String>()).input(),
    );
  }
}

