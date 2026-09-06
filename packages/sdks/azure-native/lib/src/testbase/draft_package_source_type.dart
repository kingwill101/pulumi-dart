import 'package:pulumi/pulumi.dart' as pulumi;

/// The source type.
enum DraftPackageSourceType implements pulumi.PulumiEnum<String> {
  valueNative("Native"),
  valueIntuneWin("IntuneWin"),
  valueTestBasePackage("TestBasePackage"),
  valueGalleryApp("GalleryApp"),
  valueIntuneEnrollment("IntuneEnrollment");

  const DraftPackageSourceType(this.wireValue);
  @override
  final String wireValue;

  static DraftPackageSourceType fromValue(String value) {
    for (final item in DraftPackageSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DraftPackageSourceType value: $value');
  }
}
