// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobLoggingConfig {
  /// For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  final pulumi.Input<bool>? enableOnPremGcsTransferLogs;
  /// States in which logActions are logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  final pulumi.Input<List<String>>? logActionStates;
  /// Specifies the actions to be logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  final pulumi.Input<List<String>>? logActions;

  /// Creates a new [TransferJobLoggingConfig].
  /// [enableOnPremGcsTransferLogs] For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  /// [logActionStates] States in which logActions are logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  /// [logActions] Specifies the actions to be logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  const TransferJobLoggingConfig({
    this.enableOnPremGcsTransferLogs,
    this.logActionStates,
    this.logActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableOnPremGcsTransferLogs': ?enableOnPremGcsTransferLogs,
      'logActionStates': ?logActionStates,
      'logActions': ?logActions,
    };
  }

  factory TransferJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return TransferJobLoggingConfig(
      enableOnPremGcsTransferLogs: (() { final guardedValue = map['enableOnPremGcsTransferLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logActionStates: (() { final guardedValue = map['logActionStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logActions: (() { final guardedValue = map['logActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

