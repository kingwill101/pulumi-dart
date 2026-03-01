enum BasicPerfSampleSeriesPerfUnit {
  perfUnitUnspecified("perfUnitUnspecified"),
  kibibyte("kibibyte"),
  percent("percent"),
  bytesPerSecond("bytesPerSecond"),
  framesPerSecond("framesPerSecond"),
  byte("byte");

  const BasicPerfSampleSeriesPerfUnit(this.value);
  final String value;

  static BasicPerfSampleSeriesPerfUnit fromValue(String value) {
    for (final item in BasicPerfSampleSeriesPerfUnit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BasicPerfSampleSeriesPerfUnit value: $value');
  }
}

