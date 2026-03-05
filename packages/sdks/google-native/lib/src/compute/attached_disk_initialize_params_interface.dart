/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum AttachedDiskInitializeParamsInterface {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const AttachedDiskInitializeParamsInterface(this.wireValue);
  final String wireValue;

  static AttachedDiskInitializeParamsInterface fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsInterface.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsInterface value: $value');
  }
}

