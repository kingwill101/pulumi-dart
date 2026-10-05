import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
enum MetadataOptionsMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  modeSkip("MODE_SKIP"),
  modePreserve("MODE_PRESERVE");

  const MetadataOptionsMode(this.wireValue);
  @override
  final String wireValue;

  static MetadataOptionsMode fromValue(String value) {
    for (final item in MetadataOptionsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsMode value: $value');
  }
}
