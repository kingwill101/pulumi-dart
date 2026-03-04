// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the config of disk options.
class GoogleCloudMlV1DiskConfigResponse {
  /// Size in GB of the boot disk (default is 100GB).
  final pulumi.Input<int> bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final pulumi.Input<String> bootDiskType;

  /// Creates a new [GoogleCloudMlV1DiskConfigResponse].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  GoogleCloudMlV1DiskConfigResponse({
    required this.bootDiskSizeGb,
    required this.bootDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': bootDiskSizeGb,
      'bootDiskType': bootDiskType,
    };
  }

  factory GoogleCloudMlV1DiskConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1DiskConfigResponse(
      bootDiskSizeGb: pulumi.Input.fromValue(map['bootDiskSizeGb'] as int),
      bootDiskType: pulumi.Input.fromValue(map['bootDiskType'] as String),
    );
  }
}
