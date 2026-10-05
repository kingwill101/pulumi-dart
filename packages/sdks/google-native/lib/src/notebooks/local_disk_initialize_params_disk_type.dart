import 'package:pulumi/pulumi.dart' as pulumi;

/// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
enum LocalDiskInitializeParamsDiskType implements pulumi.PulumiEnum<String> {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  pdStandard("PD_STANDARD"),
  pdSsd("PD_SSD"),
  pdBalanced("PD_BALANCED"),
  pdExtreme("PD_EXTREME");

  const LocalDiskInitializeParamsDiskType(this.wireValue);
  @override
  final String wireValue;

  static LocalDiskInitializeParamsDiskType fromValue(String value) {
    for (final item in LocalDiskInitializeParamsDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDiskInitializeParamsDiskType value: $value');
  }
}
