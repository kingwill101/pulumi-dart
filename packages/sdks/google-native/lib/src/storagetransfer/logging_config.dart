// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_log_action_states_item.dart';
import 'logging_config_log_actions_item.dart';

/// Specifies the logging behavior for transfer operations. For cloud-to-cloud transfers, logs are sent to Cloud Logging. See [Read transfer logs](https://cloud.google.com/storage-transfer/docs/read-transfer-logs) for details. For transfers to or from a POSIX file system, logs are stored in the Cloud Storage bucket that is the source or sink of the transfer. See [Managing Transfer for on-premises jobs] (https://cloud.google.com/storage-transfer/docs/managing-on-prem-jobs#viewing-logs) for details.
class LoggingConfig {
  /// For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  final bool? enableOnpremGcsTransferLogs;
  /// States in which `log_actions` are logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  final List<LoggingConfigLogActionStatesItem>? logActionStates;
  /// Specifies the actions to be logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  final List<LoggingConfigLogActionsItem>? logActions;

  /// Creates a new [LoggingConfig].
  /// [enableOnpremGcsTransferLogs] For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  /// [logActionStates] States in which `log_actions` are logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  /// [logActions] Specifies the actions to be logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  LoggingConfig({
    this.enableOnpremGcsTransferLogs,
    this.logActionStates,
    this.logActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableOnpremGcsTransferLogs': ?enableOnpremGcsTransferLogs,
      'logActionStates': ?logActionStates == null ? null : pulumi.Input.encodeList<LoggingConfigLogActionStatesItem, String>(logActionStates!, (value) => value.value),
      'logActions': ?logActions == null ? null : pulumi.Input.encodeList<LoggingConfigLogActionsItem, String>(logActions!, (value) => value.value),
    };
  }

  factory LoggingConfig.fromMap(Map<String, dynamic> map) {
    return LoggingConfig(
      enableOnpremGcsTransferLogs: map['enableOnpremGcsTransferLogs'] == null ? null : map['enableOnpremGcsTransferLogs'] as bool,
      logActionStates: map['logActionStates'] == null ? null : pulumi.Input.decodeList<LoggingConfigLogActionStatesItem>(map['logActionStates'], (value) => LoggingConfigLogActionStatesItem.fromValue(value as String)),
      logActions: map['logActions'] == null ? null : pulumi.Input.decodeList<LoggingConfigLogActionsItem>(map['logActions'], (value) => LoggingConfigLogActionsItem.fromValue(value as String)),
    );
  }
}

