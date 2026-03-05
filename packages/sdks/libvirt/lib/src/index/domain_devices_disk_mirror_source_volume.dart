// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_volume_sec_label.dart';

class DomainDevicesDiskMirrorSourceVolume {
  /// Sets the mode for the volume source in the backing store configuration.
  final pulumi.Input<String>? mode;
  /// Specifies the pool from which the volume source is derived in the backing store.
  final pulumi.Input<String>? pool;
  /// Configures the security label settings for the volume in the backing store.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceVolumeSecLabel>>? secLabels;
  /// Provides the volume definition used as the backing store source.
  final pulumi.Input<String>? volume;

  /// Creates a new [DomainDevicesDiskMirrorSourceVolume].
  /// [mode] Sets the mode for the volume source in the backing store configuration.
  /// [pool] Specifies the pool from which the volume source is derived in the backing store.
  /// [secLabels] Configures the security label settings for the volume in the backing store.
  /// [volume] Provides the volume definition used as the backing store source.
  DomainDevicesDiskMirrorSourceVolume({
    this.mode,
    this.pool,
    this.secLabels,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'pool': ?pool,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceVolumeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceVolumeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volume': ?volume,
    };
  }

  factory DomainDevicesDiskMirrorSourceVolume.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVolume(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceVolumeSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorSourceVolumeSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volume: (() { final guardedValue = map['volume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

