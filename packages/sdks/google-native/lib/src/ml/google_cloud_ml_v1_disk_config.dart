// ignore_for_file: unused_element, unnecessary_cast


/// Represents the config of disk options.
class GoogleCloudMlV1DiskConfig {
  /// Size in GB of the boot disk (default is 100GB).
  final int? bootDiskSizeGb;
  /// Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final String? bootDiskType;

  /// Creates a new [GoogleCloudMlV1DiskConfig].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  GoogleCloudMlV1DiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
    };
  }

  factory GoogleCloudMlV1DiskConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1DiskConfig(
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      bootDiskType: map['bootDiskType'] == null ? null : map['bootDiskType'] as String,
    );
  }
}

