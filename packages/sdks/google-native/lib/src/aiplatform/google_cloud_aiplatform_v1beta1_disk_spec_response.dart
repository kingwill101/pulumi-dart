// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec of disk options.
class GoogleCloudAiplatformV1beta1DiskSpecResponse {
  /// Size in GB of the boot disk (default is 100GB).
  final pulumi.Input<int> bootDiskSizeGb;
  /// Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final pulumi.Input<String> bootDiskType;

  /// Creates a new [GoogleCloudAiplatformV1beta1DiskSpecResponse].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  GoogleCloudAiplatformV1beta1DiskSpecResponse({
    required this.bootDiskSizeGb,
    required this.bootDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': bootDiskSizeGb,
      'bootDiskType': bootDiskType,
    };
  }

  factory GoogleCloudAiplatformV1beta1DiskSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1DiskSpecResponse(
      bootDiskSizeGb: pulumi.Input.fromValue(map['bootDiskSizeGb'] as int),
      bootDiskType: pulumi.Input.fromValue(map['bootDiskType'] as String),
    );
  }
}

