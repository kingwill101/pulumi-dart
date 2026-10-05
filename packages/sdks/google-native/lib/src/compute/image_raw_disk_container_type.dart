import 'package:pulumi/pulumi.dart' as pulumi;

/// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
enum ImageRawDiskContainerType implements pulumi.PulumiEnum<String> {
  tar("TAR");

  const ImageRawDiskContainerType(this.wireValue);
  @override
  final String wireValue;

  static ImageRawDiskContainerType fromValue(String value) {
    for (final item in ImageRawDiskContainerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageRawDiskContainerType value: $value');
  }
}
