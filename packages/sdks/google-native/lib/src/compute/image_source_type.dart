import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceType implements pulumi.PulumiEnum<String> {
  raw("RAW");

  const ImageSourceType(this.wireValue);
  @override
  final String wireValue;

  static ImageSourceType fromValue(String value) {
    for (final item in ImageSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceType value: $value');
  }
}
