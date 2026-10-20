import 'package:pulumi/pulumi.dart' as pulumi;

/// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
enum NfsExportOptionsAccessModeFileV1beta1 implements pulumi.PulumiEnum<String> {
  accessModeUnspecified("ACCESS_MODE_UNSPECIFIED"),
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const NfsExportOptionsAccessModeFileV1beta1(this.wireValue);
  @override
  final String wireValue;

  static NfsExportOptionsAccessModeFileV1beta1 fromValue(String value) {
    for (final item in NfsExportOptionsAccessModeFileV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsAccessModeFileV1beta1 value: $value');
  }
}
