// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateDataPersistentDiskSpec {
  /// The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  final pulumi.Input<String>? diskSizeGb;
  /// The type of the persistent disk.
  final pulumi.Input<String>? diskType;

  /// Creates a new [RuntimeTemplateDataPersistentDiskSpec].
  /// [diskSizeGb] The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  /// [diskType] The type of the persistent disk.
  const RuntimeTemplateDataPersistentDiskSpec({
    this.diskSizeGb,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
    };
  }

  factory RuntimeTemplateDataPersistentDiskSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateDataPersistentDiskSpec(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

