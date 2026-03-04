// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec of disk options.
class GoogleCloudAiplatformV1DiskSpec {
  /// Size in GB of the boot disk (default is 100GB).
  final pulumi.Input<int>? bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final pulumi.Input<String>? bootDiskType;

  /// Creates a new [GoogleCloudAiplatformV1DiskSpec].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  GoogleCloudAiplatformV1DiskSpec({this.bootDiskSizeGb, this.bootDiskType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
    };
  }

  factory GoogleCloudAiplatformV1DiskSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DiskSpec(
      bootDiskSizeGb: (() {
        final guardedValue = map['bootDiskSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      bootDiskType: (() {
        final guardedValue = map['bootDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
