// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec {
  /// The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  final pulumi.Input<String>? diskSizeGb;
  /// The type of the persistent disk.
  final pulumi.Input<String>? diskType;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec].
  /// [diskSizeGb] The disk size of the runtime in GB. If specified, the diskType must also be specified. The minimum size is 10GB and the maximum is 65536GB.
  /// [diskType] The type of the persistent disk.
  NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec({
    this.diskSizeGb,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
    };
  }

  factory NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

