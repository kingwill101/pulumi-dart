enum BasicPerfSampleSeriesPerfUnit {
  perfUnitUnspecified("perfUnitUnspecified"),
  kibibyte("kibibyte"),
  percent("percent"),
  bytesPerSecond("bytesPerSecond"),
  framesPerSecond("framesPerSecond"),
  byte("byte");

  const BasicPerfSampleSeriesPerfUnit(this.wireValue);
  final String wireValue;

  static BasicPerfSampleSeriesPerfUnit fromValue(String value) {
    for (final item in BasicPerfSampleSeriesPerfUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BasicPerfSampleSeriesPerfUnit value: $value');
  }
}

