// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerMountTmpfsOptions {
  /// The permission mode for the tmpfs mount in an integer.
  final pulumi.Input<int>? mode;
  /// The size for the tmpfs mount in bytes.
  final pulumi.Input<int>? sizeBytes;

  /// Creates a new [ContainerMountTmpfsOptions].
  /// [mode] The permission mode for the tmpfs mount in an integer.
  /// [sizeBytes] The size for the tmpfs mount in bytes.
  const ContainerMountTmpfsOptions({
    this.mode,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory ContainerMountTmpfsOptions.fromMap(Map<String, dynamic> map) {
    return ContainerMountTmpfsOptions(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

