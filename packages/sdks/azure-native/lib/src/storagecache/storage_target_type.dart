import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the Storage Target.
enum StorageTargetType implements pulumi.PulumiEnum<String> {
  valueNfs3("nfs3"),
  valueClfs("clfs"),
  valueUnknown("unknown"),
  valueBlobNfs("blobNfs");

  const StorageTargetType(this.wireValue);
  @override
  final String wireValue;

  static StorageTargetType fromValue(String value) {
    for (final item in StorageTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTargetType value: $value');
  }
}
