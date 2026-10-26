import 'package:pulumi/pulumi.dart' as pulumi;

/// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
enum ImageRawDiskContainerTypeComputeBeta implements pulumi.PulumiEnum<String> {
  tar("TAR");

  const ImageRawDiskContainerTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ImageRawDiskContainerTypeComputeBeta fromValue(String value) {
    for (final item in ImageRawDiskContainerTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageRawDiskContainerTypeComputeBeta value: $value');
  }
}
