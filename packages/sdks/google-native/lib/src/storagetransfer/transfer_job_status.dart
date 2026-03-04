/// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
enum TransferJobStatus {
  statusUnspecified("STATUS_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  deleted("DELETED");

  const TransferJobStatus(this.wireValue);
  final String wireValue;

  static TransferJobStatus fromValue(String value) {
    for (final item in TransferJobStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferJobStatus value: $value');
  }
}
