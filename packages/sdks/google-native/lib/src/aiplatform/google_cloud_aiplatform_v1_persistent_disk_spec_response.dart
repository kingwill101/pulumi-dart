// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec of persistent disk options.
class GoogleCloudAiplatformV1PersistentDiskSpecResponse {
  /// Size in GB of the disk (default is 100GB).
  final pulumi.Input<String> diskSizeGb;
  /// Type of the disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) "pd-standard" (Persistent Disk Hard Disk Drive) "pd-balanced" (Balanced Persistent Disk) "pd-extreme" (Extreme Persistent Disk)
  final pulumi.Input<String> diskType;

  /// Creates a new [GoogleCloudAiplatformV1PersistentDiskSpecResponse].
  /// [diskSizeGb] Size in GB of the disk (default is 100GB).
  /// [diskType] Type of the disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) "pd-standard" (Persistent Disk Hard Disk Drive) "pd-balanced" (Balanced Persistent Disk) "pd-extreme" (Extreme Persistent Disk)
  GoogleCloudAiplatformV1PersistentDiskSpecResponse({
    required this.diskSizeGb,
    required this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
    };
  }

  factory GoogleCloudAiplatformV1PersistentDiskSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PersistentDiskSpecResponse(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
    );
  }
}

