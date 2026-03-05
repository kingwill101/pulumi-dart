enum ExportData {
  valueRawEvents("RawEvents");

  const ExportData(this.wireValue);
  final String wireValue;

  static ExportData fromValue(String value) {
    for (final item in ExportData.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportData value: $value');
  }
}

