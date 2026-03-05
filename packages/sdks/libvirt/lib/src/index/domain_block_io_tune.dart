// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_block_io_tune_device.dart';

class DomainBlockIoTune {
  /// Defines specific device settings for block I/O tuning, enabling per-device performance modifications.
  final pulumi.Input<List<DomainBlockIoTuneDevice>>? devices;
  /// Configures the overall weight for the block I/O tuning, affecting the global I/O scheduling policy.
  final pulumi.Input<double>? weight;

  /// Creates a new [DomainBlockIoTune].
  /// [devices] Defines specific device settings for block I/O tuning, enabling per-device performance modifications.
  /// [weight] Configures the overall weight for the block I/O tuning, affecting the global I/O scheduling policy.
  DomainBlockIoTune({
    this.devices,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DomainBlockIoTuneDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DomainBlockIoTuneDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weight': ?weight,
    };
  }

  factory DomainBlockIoTune.fromMap(Map<String, dynamic> map) {
    return DomainBlockIoTune(
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainBlockIoTuneDevice>(guardedValue, (value) => DomainBlockIoTuneDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

