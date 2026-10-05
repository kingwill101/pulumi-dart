import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
enum AttachedDiskInterfaceComputeV1 implements pulumi.PulumiEnum<String> {
  nvme("NVME"),
  scsi("SCSI");

  const AttachedDiskInterfaceComputeV1(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskInterfaceComputeV1 fromValue(String value) {
    for (final item in AttachedDiskInterfaceComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInterfaceComputeV1 value: $value');
  }
}
