// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2VmDataDisk {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE
  /// mode. Only applicable to dataDisks.
  /// Default value is `READ_WRITE`.
  /// Possible values are: `READ_WRITE`, `READ_ONLY`.
  final pulumi.Input<String>? mode;

  /// Specifies the full path to an existing disk. For example:
  /// "projects/my-project/zones/us-central1-c/disks/my-disk".
  final pulumi.Input<String> sourceDisk;

  /// Creates a new [V2VmDataDisk].
  /// [mode] The mode in which to attach this disk. If not specified, the default is READ_WRITE
  /// [sourceDisk] Specifies the full path to an existing disk. For example:
  V2VmDataDisk({this.mode, required this.sourceDisk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': ?mode, 'sourceDisk': sourceDisk};
  }

  factory V2VmDataDisk.fromMap(Map<String, dynamic> map) {
    return V2VmDataDisk(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDisk: pulumi.Input.fromValue(map['sourceDisk'] as String),
    );
  }
}
