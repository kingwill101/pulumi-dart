// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_video_model_accel.dart';
import 'domain_devices_video_model_resolution.dart';

class DomainDevicesVideoModel {
  /// Configures acceleration features for the video device model.
  final pulumi.Input<DomainDevicesVideoModelAccel>? accel;
  /// Configures the blob attribute for the video device model.
  final pulumi.Input<String>? blob;
  /// Specifies the Extended Display Identification Data (EDID) for the video device model.
  final pulumi.Input<String>? edid;
  /// Sets the number of heads for the video device model, which may define multiple display outputs.
  final pulumi.Input<double>? heads;
  /// Marks the video device as the primary display output for the virtual machine.
  final pulumi.Input<String>? primary;
  /// Defines the memory allocation for the video device model.
  final pulumi.Input<double>? ram;
  /// Specifies the resolution settings for the video device model.
  final pulumi.Input<DomainDevicesVideoModelResolution>? resolution;
  /// Defines the type of video device being configured.
  final pulumi.Input<String>? type;
  /// Configures the amount of memory allocated for the video graphics array (VGA) for the video device model.
  final pulumi.Input<double>? vgaMem;
  /// Specifies the video RAM allocation for the video device model.
  final pulumi.Input<double>? vram;
  /// Specifies the 64-bit video RAM configuration for the video device model.
  final pulumi.Input<double>? vram64;

  /// Creates a new [DomainDevicesVideoModel].
  /// [accel] Configures acceleration features for the video device model.
  /// [blob] Configures the blob attribute for the video device model.
  /// [edid] Specifies the Extended Display Identification Data (EDID) for the video device model.
  /// [heads] Sets the number of heads for the video device model, which may define multiple display outputs.
  /// [primary] Marks the video device as the primary display output for the virtual machine.
  /// [ram] Defines the memory allocation for the video device model.
  /// [resolution] Specifies the resolution settings for the video device model.
  /// [type] Defines the type of video device being configured.
  /// [vgaMem] Configures the amount of memory allocated for the video graphics array (VGA) for the video device model.
  /// [vram] Specifies the video RAM allocation for the video device model.
  /// [vram64] Specifies the 64-bit video RAM configuration for the video device model.
  const DomainDevicesVideoModel({
    this.accel,
    this.blob,
    this.edid,
    this.heads,
    this.primary,
    this.ram,
    this.resolution,
    this.type,
    this.vgaMem,
    this.vram,
    this.vram64,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accel': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVideoModelAccel, Map<String, dynamic>>(accel, (value) => value.toMap()),
      'blob': ?blob,
      'edid': ?edid,
      'heads': ?heads,
      'primary': ?primary,
      'ram': ?ram,
      'resolution': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVideoModelResolution, Map<String, dynamic>>(resolution, (value) => value.toMap()),
      'type': ?type,
      'vgaMem': ?vgaMem,
      'vram': ?vram,
      'vram64': ?vram64,
    };
  }

  factory DomainDevicesVideoModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoModel(
      accel: (() { final guardedValue = map['accel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVideoModelAccel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edid: (() { final guardedValue = map['edid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heads: (() { final guardedValue = map['heads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ram: (() { final guardedValue = map['ram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      resolution: (() { final guardedValue = map['resolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesVideoModelResolution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vgaMem: (() { final guardedValue = map['vgaMem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vram: (() { final guardedValue = map['vram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vram64: (() { final guardedValue = map['vram64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

