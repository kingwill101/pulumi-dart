// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_refresh_volume.dart';

class PoolRefresh {
  /// Configures the refresh settings for individual volumes within the storage pool.
  final pulumi.Input<PoolRefreshVolume>? volume;

  /// Creates a new [PoolRefresh].
  /// [volume] Configures the refresh settings for individual volumes within the storage pool.
  const PoolRefresh({
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volume': ?pulumi.Input.mapOptionalInputValue<PoolRefreshVolume, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory PoolRefresh.fromMap(Map<String, dynamic> map) {
    return PoolRefresh(
      volume: (() { final guardedValue = map['volume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolRefreshVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

