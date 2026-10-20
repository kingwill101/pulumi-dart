import 'package:pulumi/pulumi.dart' as pulumi;

/// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
enum AttachedDiskSavedStateComputeBeta implements pulumi.PulumiEnum<String> {
  diskSavedStateUnspecified("DISK_SAVED_STATE_UNSPECIFIED"),
  preserved("PRESERVED");

  const AttachedDiskSavedStateComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskSavedStateComputeBeta fromValue(String value) {
    for (final item in AttachedDiskSavedStateComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskSavedStateComputeBeta value: $value');
  }
}
