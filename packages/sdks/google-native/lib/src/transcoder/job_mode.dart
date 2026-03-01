/// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
enum JobMode {
  processingModeUnspecified("PROCESSING_MODE_UNSPECIFIED"),
  processingModeInteractive("PROCESSING_MODE_INTERACTIVE"),
  processingModeBatch("PROCESSING_MODE_BATCH");

  const JobMode(this.value);
  final String value;

  static JobMode fromValue(String value) {
    for (final item in JobMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobMode value: $value');
  }
}

