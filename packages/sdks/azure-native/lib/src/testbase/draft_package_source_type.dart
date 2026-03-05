/// The source type.
enum DraftPackageSourceType {
  valueNative("Native"),
  valueIntuneWin("IntuneWin"),
  valueTestBasePackage("TestBasePackage"),
  valueGalleryApp("GalleryApp"),
  valueIntuneEnrollment("IntuneEnrollment");

  const DraftPackageSourceType(this.wireValue);
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

