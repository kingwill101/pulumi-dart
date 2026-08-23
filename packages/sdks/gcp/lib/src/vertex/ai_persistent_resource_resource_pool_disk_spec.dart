// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceResourcePoolDiskSpec {
  /// Size in GB of the boot disk (default is 100GB).
  final pulumi.Input<int>? bootDiskSizeGb;
  /// Type of the boot disk. For non-A3U machines, the default value is
  /// "pd-ssd", for A3U machines, the default value is "hyperdisk-balanced".
  /// Valid values: "pd-ssd" (Persistent Disk Solid State Drive),
  /// "pd-standard" (Persistent Disk Hard Disk Drive) or "hyperdisk-balanced".
  final pulumi.Input<String>? bootDiskType;

  /// Creates a new [AiPersistentResourceResourcePoolDiskSpec].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the boot disk. For non-A3U machines, the default value is
  const AiPersistentResourceResourcePoolDiskSpec({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
    };
  }

  factory AiPersistentResourceResourcePoolDiskSpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourcePoolDiskSpec(
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bootDiskType: (() { final guardedValue = map['bootDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
