import 'package:pulumi/pulumi.dart' as pulumi;

/// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
enum AttachedDiskSavedStateComputeV1 implements pulumi.PulumiEnum<String> {
  diskSavedStateUnspecified("DISK_SAVED_STATE_UNSPECIFIED"),
  preserved("PRESERVED");

  const AttachedDiskSavedStateComputeV1(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskSavedStateComputeV1 fromValue(String value) {
    for (final item in AttachedDiskSavedStateComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskSavedStateComputeV1 value: $value');
  }
}
