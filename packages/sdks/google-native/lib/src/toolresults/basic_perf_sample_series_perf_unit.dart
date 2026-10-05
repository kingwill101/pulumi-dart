import 'package:pulumi/pulumi.dart' as pulumi;

enum BasicPerfSampleSeriesPerfUnit implements pulumi.PulumiEnum<String> {
  perfUnitUnspecified("perfUnitUnspecified"),
  kibibyte("kibibyte"),
  percent("percent"),
  bytesPerSecond("bytesPerSecond"),
  framesPerSecond("framesPerSecond"),
  byte("byte");

  const BasicPerfSampleSeriesPerfUnit(this.wireValue);
  @override
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
