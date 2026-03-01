// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_block_io_tune_device.dart';

class DomainBlockIoTune {
  /// Defines specific device settings for block I/O tuning, enabling per-device performance modifications.
  final List<DomainBlockIoTuneDevice>? devices;
  /// Configures the overall weight for the block I/O tuning, affecting the global I/O scheduling policy.
  final double? weight;

  /// Creates a new [DomainBlockIoTune].
  /// [devices] Defines specific device settings for block I/O tuning, enabling per-device performance modifications.
  /// [weight] Configures the overall weight for the block I/O tuning, affecting the global I/O scheduling policy.
  DomainBlockIoTune({
    this.devices,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?devices == null ? null : pulumi.Input.encodeList<DomainBlockIoTuneDevice, Map<String, dynamic>>(devices!, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory DomainBlockIoTune.fromMap(Map<String, dynamic> map) {
    return DomainBlockIoTune(
      devices: map['devices'] == null ? null : pulumi.Input.decodeList<DomainBlockIoTuneDevice>(map['devices'], (value) => DomainBlockIoTuneDevice.fromMap((value as Map).cast<String, dynamic>())),
      weight: map['weight'] == null ? null : map['weight'] as double,
    );
  }
}

