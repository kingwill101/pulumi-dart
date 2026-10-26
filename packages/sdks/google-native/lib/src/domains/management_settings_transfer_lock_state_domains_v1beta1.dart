import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls whether the domain can be transferred to another registrar.
enum ManagementSettingsTransferLockStateDomainsV1beta1 implements pulumi.PulumiEnum<String> {
  transferLockStateUnspecified("TRANSFER_LOCK_STATE_UNSPECIFIED"),
  unlocked("UNLOCKED"),
  locked("LOCKED");

  const ManagementSettingsTransferLockStateDomainsV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ManagementSettingsTransferLockStateDomainsV1beta1 fromValue(String value) {
    for (final item in ManagementSettingsTransferLockStateDomainsV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagementSettingsTransferLockStateDomainsV1beta1 value: $value');
  }
}
