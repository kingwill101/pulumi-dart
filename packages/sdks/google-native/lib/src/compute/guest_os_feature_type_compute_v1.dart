/// The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
enum GuestOsFeatureTypeComputeV1 {
  featureTypeUnspecified("FEATURE_TYPE_UNSPECIFIED"),
  gvnic("GVNIC"),
  multiIpSubnet("MULTI_IP_SUBNET"),
  secureBoot("SECURE_BOOT"),
  sevCapable("SEV_CAPABLE"),
  sevLiveMigratable("SEV_LIVE_MIGRATABLE"),
  sevLiveMigratableV2("SEV_LIVE_MIGRATABLE_V2"),
  sevSnpCapable("SEV_SNP_CAPABLE"),
  uefiCompatible("UEFI_COMPATIBLE"),
  virtioScsiMultiqueue("VIRTIO_SCSI_MULTIQUEUE"),
  windows("WINDOWS");

  const GuestOsFeatureTypeComputeV1(this.wireValue);
  final String wireValue;

  static GuestOsFeatureTypeComputeV1 fromValue(String value) {
    for (final item in GuestOsFeatureTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GuestOsFeatureTypeComputeV1 value: $value');
  }
}

