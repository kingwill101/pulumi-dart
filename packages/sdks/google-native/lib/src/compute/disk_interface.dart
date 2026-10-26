import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum DiskInterface implements pulumi.PulumiEnum<String> {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const DiskInterface(this.wireValue);
  @override
  final String wireValue;

  static DiskInterface fromValue(String value) {
    for (final item in DiskInterface.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskInterface value: $value');
  }
}
