import 'package:pulumi/pulumi.dart' as pulumi;

enum ExportData implements pulumi.PulumiEnum<String> {
  rawEvents("RawEvents");

  const ExportData(this.wireValue);
  @override
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
