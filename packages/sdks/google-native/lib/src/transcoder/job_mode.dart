import 'package:pulumi/pulumi.dart' as pulumi;

/// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
enum JobMode implements pulumi.PulumiEnum<String> {
  processingModeUnspecified("PROCESSING_MODE_UNSPECIFIED"),
  processingModeInteractive("PROCESSING_MODE_INTERACTIVE"),
  processingModeBatch("PROCESSING_MODE_BATCH");

  const JobMode(this.wireValue);
  @override
  final String wireValue;

  static JobMode fromValue(String value) {
    for (final item in JobMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobMode value: $value');
  }
}
