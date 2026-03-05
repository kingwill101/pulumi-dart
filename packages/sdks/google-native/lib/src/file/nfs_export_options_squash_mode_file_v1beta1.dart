/// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
enum NfsExportOptionsSquashModeFileV1beta1 {
  squashModeUnspecified("SQUASH_MODE_UNSPECIFIED"),
  noRootSquash("NO_ROOT_SQUASH"),
  rootSquash("ROOT_SQUASH");

  const NfsExportOptionsSquashModeFileV1beta1(this.wireValue);
  final String wireValue;

  static NfsExportOptionsSquashModeFileV1beta1 fromValue(String value) {
    for (final item in NfsExportOptionsSquashModeFileV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsSquashModeFileV1beta1 value: $value');
  }
}

