import 'package:pulumi/pulumi.dart' as pulumi;

/// The disk type to use in the VM.
enum TargetVMDetailsDiskType implements pulumi.PulumiEnum<String> {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  standard("STANDARD"),
  balanced("BALANCED"),
  ssd("SSD");

  const TargetVMDetailsDiskType(this.wireValue);
  @override
  final String wireValue;

  static TargetVMDetailsDiskType fromValue(String value) {
    for (final item in TargetVMDetailsDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetVMDetailsDiskType value: $value');
  }
}
