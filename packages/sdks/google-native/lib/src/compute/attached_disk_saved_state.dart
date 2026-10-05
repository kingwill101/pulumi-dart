import 'package:pulumi/pulumi.dart' as pulumi;

/// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
enum AttachedDiskSavedState implements pulumi.PulumiEnum<String> {
  diskSavedStateUnspecified("DISK_SAVED_STATE_UNSPECIFIED"),
  preserved("PRESERVED");

  const AttachedDiskSavedState(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskSavedState fromValue(String value) {
    for (final item in AttachedDiskSavedState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskSavedState value: $value');
  }
}
