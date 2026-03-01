// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemSourceVolume {
  /// Defines the pool from which the volume of the filesystem is sourced.
  final String pool;
  /// Indicates the specific volume name sourced for the filesystem.
  final String volume;

  /// Creates a new [DomainDevicesFilesystemSourceVolume].
  /// [pool] Defines the pool from which the volume of the filesystem is sourced.
  /// [volume] Indicates the specific volume name sourced for the filesystem.
  DomainDevicesFilesystemSourceVolume({
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
      pool: map['pool'] as String,
      volume: map['volume'] as String,
    );
  }
}

