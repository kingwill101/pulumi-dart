// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_volume_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVolume {
  /// Sets the mode for the volume source in the backing store configuration.
  final pulumi.Input<String>? mode;
  /// Specifies the pool from which the volume source is derived in the backing store.
  final pulumi.Input<String>? pool;
  /// Configures the security label settings for the volume in the backing store.
  final pulumi.Input<List<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel>>? secLabels;
  /// Provides the volume definition used as the backing store source.
  final pulumi.Input<String>? volume;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVolume].
  /// [mode] Sets the mode for the volume source in the backing store configuration.
  /// [pool] Specifies the pool from which the volume source is derived in the backing store.
  /// [secLabels] Configures the security label settings for the volume in the backing store.
  /// [volume] Provides the volume definition used as the backing store source.
  DomainDevicesDiskMirrorBackingStoreSourceVolume({
    this.mode,
    this.pool,
    this.secLabels,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'pool': ?pool,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volume': ?volume,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVolume.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVolume(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volume: (() { final guardedValue = map['volume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

