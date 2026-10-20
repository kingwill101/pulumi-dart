import 'package:pulumi/pulumi.dart' as pulumi;

/// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
enum NfsExportOptionsAccessMode implements pulumi.PulumiEnum<String> {
  accessModeUnspecified("ACCESS_MODE_UNSPECIFIED"),
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const NfsExportOptionsAccessMode(this.wireValue);
  @override
  final String wireValue;

  static NfsExportOptionsAccessMode fromValue(String value) {
    for (final item in NfsExportOptionsAccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsAccessMode value: $value');
  }
}
