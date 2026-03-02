// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_coalesce_rx_frames.dart';

class DomainDevicesInterfaceCoalesceRx {
  /// Configures frame settings for received packets in coalescing, impacting how received packets are grouped for processing.
  final pulumi.Input<DomainDevicesInterfaceCoalesceRxFrames>? frames;

  /// Creates a new [DomainDevicesInterfaceCoalesceRx].
  /// [frames] Configures frame settings for received packets in coalescing, impacting how received packets are grouped for processing.
  DomainDevicesInterfaceCoalesceRx({
    this.frames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frames': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceCoalesceRxFrames, Map<String, dynamic>>(frames, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceCoalesceRx.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceCoalesceRx(
      frames: map['frames'] == null ? null : (DomainDevicesInterfaceCoalesceRxFrames.fromMap((map['frames']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

