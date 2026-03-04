/// Squash mode of the AML file system. 'All': User and Group IDs on files will be squashed to the provided values for all users on non-trusted systems. 'RootOnly': User and Group IDs on files will be squashed to provided values for solely the root user on non-trusted systems. 'None': No squashing of User and Group IDs is performed for any users on any systems.
enum AmlFilesystemSquashMode {
  valueNone("None"),
  valueRootOnly("RootOnly"),
  valueAll("All");

  const AmlFilesystemSquashMode(this.wireValue);
  final String wireValue;

  static AmlFilesystemSquashMode fromValue(String value) {
    for (final item in AmlFilesystemSquashMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmlFilesystemSquashMode value: $value');
  }
}
