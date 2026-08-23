// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemSourceVolume {
  /// Defines the pool from which the volume of the filesystem is sourced.
  final pulumi.Input<String> pool;
  /// Indicates the specific volume name sourced for the filesystem.
  final pulumi.Input<String> volume;

  /// Creates a new [DomainDevicesFilesystemSourceVolume].
  /// [pool] Defines the pool from which the volume of the filesystem is sourced.
  /// [volume] Indicates the specific volume name sourced for the filesystem.
  const DomainDevicesFilesystemSourceVolume({
    required this.pool,
    required this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pool': pool,
      'volume': volume,
    };
  }

  factory DomainDevicesFilesystemSourceVolume.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceVolume(
      pool: pulumi.Input.fromValue(map['pool'] as String),
      volume: pulumi.Input.fromValue(map['volume'] as String),
    );
  }
}
