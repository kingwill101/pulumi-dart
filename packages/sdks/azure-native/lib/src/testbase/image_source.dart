import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom image source type.
enum ImageSource implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueVHD("VHD");

  const ImageSource(this.wireValue);
  @override
  final String wireValue;

  static ImageSource fromValue(String value) {
    for (final item in ImageSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSource value: $value');
  }
}
