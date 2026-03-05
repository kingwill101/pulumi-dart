/// Gets or sets a value indicating diff disk.
enum CreateDiffDisk {
  valueFalse("false"),
  valueTrue("true");

  const CreateDiffDisk(this.wireValue);
  final String wireValue;

  static CreateDiffDisk fromValue(String value) {
    for (final item in CreateDiffDisk.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateDiffDisk value: $value');
  }
}

