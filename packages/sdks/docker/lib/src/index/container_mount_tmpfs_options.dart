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
  ContainerMountTmpfsOptions({
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
      mode: map['mode'] == null ? null : (map['mode']! as int).input(),
      sizeBytes: map['sizeBytes'] == null ? null : (map['sizeBytes']! as int).input(),
    );
  }
}

